-- ============================================================
-- FRBR - PostgreSQL / SQL upiti U1-U8
-- ============================================================

-- U1 - Pronaći djelo prema naslovu
SELECT
    djelo_id,
    naslov,
    vrsta_djela,
    godina_prve_objave
FROM djelo
WHERE naslov = 'Le Petit Prince';


-- U2 - Pronaći sve autore određenog djela
SELECT
    o.ime,
    o.prezime,
    d.naslov
FROM djelo d
JOIN osoba_djelo od
    ON d.djelo_id = od.djelo_id
JOIN osoba o
    ON od.osoba_id = o.osoba_id
WHERE d.naslov = 'Psihologija: udžbenik za gimnazije'
ORDER BY o.prezime, o.ime;


-- U3 - Pronaći sve izraze određenog djela
SELECT
    i.izraz_id,
    i.jezik,
    i.vrsta_izraza,
    i.napomena
FROM djelo d
JOIN izraz i
    ON d.djelo_id = i.djelo_id
WHERE d.naslov = 'Le Petit Prince'
ORDER BY i.izraz_id;


-- U4 - Pronaći sve pojavne oblike određenog djela
SELECT DISTINCT
    p.pojavni_oblik_id,
    p.naslov,
    p.izdavac,
    p.godina_izdavanja,
    p.isbn
FROM djelo d
JOIN izraz i
    ON d.djelo_id = i.djelo_id
JOIN izraz_pojavni_oblik ipo
    ON i.izraz_id = ipo.izraz_id
JOIN pojavni_oblik p
    ON ipo.pojavni_oblik_id = p.pojavni_oblik_id
WHERE d.naslov = 'Pride and Prejudice'
ORDER BY p.godina_izdavanja;


-- U5 - Pronaći sve primjerke određenog djela
SELECT DISTINCT
    pr.primjerak_id,
    pr.lokacija,
    pr.signatura,
    pr.inventarni_broj
FROM djelo d
JOIN izraz i
    ON d.djelo_id = i.djelo_id
JOIN izraz_pojavni_oblik ipo
    ON i.izraz_id = ipo.izraz_id
JOIN pojavni_oblik p
    ON ipo.pojavni_oblik_id = p.pojavni_oblik_id
JOIN primjerak pr
    ON p.pojavni_oblik_id = pr.pojavni_oblik_id
WHERE d.naslov = 'Psihologija: udžbenik za gimnazije'
ORDER BY pr.primjerak_id;


-- U6 - Pronaći sve hrvatske izraze djela i njihove prevoditelje
SELECT
    i.izraz_id,
    i.jezik,
    i.vrsta_izraza,
    o.ime,
    o.prezime,
    oi.uloga
FROM djelo d
JOIN izraz i
    ON d.djelo_id = i.djelo_id
JOIN osoba_izraz oi
    ON i.izraz_id = oi.izraz_id
JOIN osoba o
    ON oi.osoba_id = o.osoba_id
WHERE d.naslov = 'Le Petit Prince'
  AND i.jezik = 'hrvatski'
ORDER BY i.izraz_id;


-- U7 - Pronaći pojavne oblike koji sadrže više izraza
SELECT
    p.pojavni_oblik_id,
    p.naslov,
    p.izdavac,
    p.godina_izdavanja,
    COUNT(DISTINCT ipo.izraz_id) AS broj_izraza
FROM pojavni_oblik p
JOIN izraz_pojavni_oblik ipo
    ON p.pojavni_oblik_id = ipo.pojavni_oblik_id
GROUP BY
    p.pojavni_oblik_id,
    p.naslov,
    p.izdavac,
    p.godina_izdavanja
HAVING COUNT(DISTINCT ipo.izraz_id) > 1
ORDER BY p.pojavni_oblik_id;


-- U8 - Od konkretnog primjerka pronaći pripadajuće djelo
SELECT DISTINCT
    pr.inventarni_broj,
    pr.signatura,
    p.naslov AS pojavni_oblik,
    d.naslov AS djelo
FROM primjerak pr
JOIN pojavni_oblik p
    ON pr.pojavni_oblik_id = p.pojavni_oblik_id
JOIN izraz_pojavni_oblik ipo
    ON p.pojavni_oblik_id = ipo.pojavni_oblik_id
JOIN izraz i
    ON ipo.izraz_id = i.izraz_id
JOIN djelo d
    ON i.djelo_id = d.djelo_id
WHERE pr.inventarni_broj = '39743';
