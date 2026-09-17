// ============================================================
// FRBR - Cypher upiti U1-U8
// ============================================================

// Za svaki su upit postavljena dva koda koji su odvojeni praznim redom - prvi daje tablični rezultat za usporedbu, a drugi kao rezultat daje graf prikaz

// U1 - Pronaći djelo prema naslovu
MATCH (d:Djelo {naslov: 'Le Petit Prince'})
RETURN d.djelo_id AS djelo_id,
       d.naslov AS naslov,
       d.vrsta_djela AS vrsta_djela,
       d.godina_prve_objave AS godina_prve_objave;

MATCH (d:Djelo {naslov: 'Le Petit Prince'})
RETURN d;

// U2 - Pronaći sve autore određenog djela
MATCH (o:Osoba)-[:STVORILA]->
      (d:Djelo {naslov: 'Psihologija: udžbenik za gimnazije'})
RETURN o.ime AS ime,
       o.prezime AS prezime,
       d.naslov AS djelo
ORDER BY o.prezime, o.ime;

MATCH path =
    (o:Osoba)-[:STVORILA]->
    (d:Djelo {naslov: 'Psihologija: udžbenik za gimnazije'})
RETURN path;

// U3 - Pronaći sve izraze određenog djela
MATCH (d:Djelo {naslov: 'Le Petit Prince'})
      -[:REALIZIRA_SE_KROZ]->
      (i:Izraz)
RETURN i.izraz_id AS izraz_id,
       i.jezik AS jezik,
       i.vrsta_izraza AS vrsta_izraza,
       i.napomena AS napomena
ORDER BY i.izraz_id;

MATCH path =
    (d:Djelo {naslov: 'Le Petit Prince'})
    -[:REALIZIRA_SE_KROZ]->
    (i:Izraz)
RETURN path;

// U4 - Pronaći sve pojavne oblike određenog djela
MATCH (d:Djelo {naslov: 'Pride and Prejudice'})
      -[:REALIZIRA_SE_KROZ]->
      (:Izraz)
      -[:POSTVARUJE_SE_U]->
      (p:PojavniOblik)
RETURN DISTINCT
       p.pojavni_oblik_id AS pojavni_oblik_id,
       p.naslov AS naslov,
       p.izdavac AS izdavac,
       p.godina_izdavanja AS godina_izdavanja,
       p.isbn AS isbn
ORDER BY p.godina_izdavanja;

MATCH path =
    (d:Djelo {naslov: 'Pride and Prejudice'})
    -[:REALIZIRA_SE_KROZ]->
    (:Izraz)
    -[:POSTVARUJE_SE_U]->
    (:PojavniOblik)
RETURN path;

// U5 - Pronaći svi primjerke određenog djela
MATCH (d:Djelo {naslov: 'Psihologija: udžbenik za gimnazije'})
      -[:REALIZIRA_SE_KROZ]->
      (:Izraz)
      -[:POSTVARUJE_SE_U]->
      (:PojavniOblik)
      -[:OPRIMJERUJE_SE_U]->
      (pr:Primjerak)
RETURN DISTINCT
       pr.primjerak_id AS primjerak_id,
       pr.lokacija AS lokacija,
       pr.signatura AS signatura,
       pr.inventarni_broj AS inventarni_broj
ORDER BY pr.primjerak_id;

MATCH path =
    (d:Djelo {naslov: 'Psihologija: udžbenik za gimnazije'})
    -[:REALIZIRA_SE_KROZ]->
    (:Izraz)
    -[:POSTVARUJE_SE_U]->
    (:PojavniOblik)
    -[:OPRIMJERUJE_SE_U]->
    (:Primjerak)
RETURN path;

// U6 - Pronaći sve hrvatske izraze djela i njihove prevoditelje
MATCH (d:Djelo {naslov: 'Le Petit Prince'})
      -[:REALIZIRA_SE_KROZ]->
      (i:Izraz {jezik: 'hrvatski'})
MATCH (o:Osoba)-[r:DOPRINIJELA]->(i)
RETURN i.izraz_id AS izraz_id,
       i.jezik AS jezik,
       i.vrsta_izraza AS vrsta_izraza,
       o.ime AS ime,
       o.prezime AS prezime,
       r.uloga AS uloga
ORDER BY i.izraz_id;

MATCH path1 =
    (d:Djelo {naslov: 'Le Petit Prince'})
    -[:REALIZIRA_SE_KROZ]->
    (i:Izraz {jezik: 'hrvatski'})
MATCH path2 =
    (o:Osoba)-[:DOPRINIJELA]->(i)
RETURN path1, path2;

// U7 - Pronaći pojavne oblike koji sadrže više izraza
MATCH (i:Izraz)-[:POSTVARUJE_SE_U]->(p:PojavniOblik)
WITH p, COUNT(DISTINCT i) AS broj_izraza
WHERE broj_izraza > 1
RETURN p.pojavni_oblik_id AS pojavni_oblik_id,
       p.naslov AS naslov,
       p.izdavac AS izdavac,
       p.godina_izdavanja AS godina_izdavanja,
       broj_izraza
ORDER BY p.pojavni_oblik_id;

MATCH (i:Izraz)-[:POSTVARUJE_SE_U]->(p:PojavniOblik)
WITH p, COUNT(DISTINCT i) AS broj_izraza
WHERE broj_izraza > 1
MATCH path = (i2:Izraz)-[:POSTVARUJE_SE_U]->(p)
RETURN path;

// U8 - Od konkretnog primjerka pronaći pripadajuće djelo
MATCH (pr:Primjerak {inventarni_broj: '39743'})
      <-[:OPRIMJERUJE_SE_U]-
      (p:PojavniOblik)
      <-[:POSTVARUJE_SE_U]-
      (:Izraz)
      <-[:REALIZIRA_SE_KROZ]-
      (d:Djelo)
RETURN DISTINCT
       pr.inventarni_broj AS inventarni_broj,
       pr.signatura AS signatura,
       p.naslov AS pojavni_oblik,
       d.naslov AS djelo;

MATCH path =
    (pr:Primjerak {inventarni_broj: '39743'})
    <-[:OPRIMJERUJE_SE_U]-
    (p:PojavniOblik)
    <-[:POSTVARUJE_SE_U]-
    (:Izraz)
    <-[:REALIZIRA_SE_KROZ]-
    (d:Djelo)
RETURN path;
