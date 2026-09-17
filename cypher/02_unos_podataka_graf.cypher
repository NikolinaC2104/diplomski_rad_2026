// ============================================================
// Unos podataka u graf bazu
// ============================================================

// ============================================================
// 1. OSOBE
// ============================================================

MERGE (o:Osoba {osoba_id: 1})
SET o.ime = 'Jane', o.prezime = 'Austen';

MERGE (o:Osoba {osoba_id: 2})
SET o.ime = 'Mirna', o.prezime = 'Čubranić';

MERGE (o:Osoba {osoba_id: 3})
SET o.ime = 'Tomislav', o.prezime = 'Odlešić';

MERGE (o:Osoba {osoba_id: 4})
SET o.ime = 'Francesco', o.prezime = 'Petrarca';

MERGE (o:Osoba {osoba_id: 5})
SET o.ime = 'Frano', o.prezime = 'Čale';

MERGE (o:Osoba {osoba_id: 6})
SET o.ime = 'Mate', o.prezime = 'Maras';

MERGE (o:Osoba {osoba_id: 7})
SET o.ime = 'Tonko', o.prezime = 'Maroević';

MERGE (o:Osoba {osoba_id: 8})
SET o.ime = 'Mirko', o.prezime = 'Tomasović';

MERGE (o:Osoba {osoba_id: 9})
SET o.ime = 'Samuel', o.prezime = 'Beckett';

MERGE (o:Osoba {osoba_id: 10})
SET o.ime = 'Alka', o.prezime = 'Škiljan';

MERGE (o:Osoba {osoba_id: 11})
SET o.ime = 'Antoine de', o.prezime = 'Saint-Exupéry';

MERGE (o:Osoba {osoba_id: 12})
SET o.ime = 'Mia', o.prezime = 'Pervan';

MERGE (o:Osoba {osoba_id: 13})
SET o.ime = 'Ivan', o.prezime = 'Kušan';

MERGE (o:Osoba {osoba_id: 14})
SET o.ime = 'Sanja', o.prezime = 'Lovrenčić';

MERGE (o:Osoba {osoba_id: 15})
SET o.ime = 'Robert', o.prezime = 'Martinov';

MERGE (o:Osoba {osoba_id: 16})
SET o.ime = 'Branimir', o.prezime = 'Šverko';

MERGE (o:Osoba {osoba_id: 17})
SET o.ime = 'Joško', o.prezime = 'Marušić';

MERGE (o:Osoba {osoba_id: 18})
SET o.ime = 'Slavko', o.prezime = 'Kljaić';

MERGE (o:Osoba {osoba_id: 19})
SET o.ime = 'Vladimir', o.prezime = 'Kolesarić';

MERGE (o:Osoba {osoba_id: 20})
SET o.ime = 'Mirjana', o.prezime = 'Krizmanić';

MERGE (o:Osoba {osoba_id: 21})
SET o.ime = 'Silvija', o.prezime = 'Szabo';

MERGE (o:Osoba {osoba_id: 22})
SET o.ime = 'Predrag', o.prezime = 'Zarevski';

MERGE (o:Osoba {osoba_id: 23})
SET o.ime = 'Miomir', o.prezime = 'Žužul';


// ============================================================
// 2. DJELA
// ============================================================

MERGE (d:Djelo {djelo_id: 1})
SET d.naslov = 'Pride and Prejudice',
    d.vrsta_djela = 'roman',
    d.godina_prve_objave = 1813;

MERGE (d:Djelo {djelo_id: 2})
SET d.naslov = 'Rerum vulgarium fragmenta',
    d.vrsta_djela = 'pjesnička zbirka';

MERGE (d:Djelo {djelo_id: 3})
SET d.naslov = 'En attendant Godot',
    d.vrsta_djela = 'drama',
    d.godina_prve_objave = 1952;

MERGE (d:Djelo {djelo_id: 4})
SET d.naslov = 'Le Petit Prince',
    d.vrsta_djela = 'književno djelo',
    d.godina_prve_objave = 1943;

MERGE (d:Djelo {djelo_id: 5})
SET d.naslov = 'Psihologija: udžbenik za gimnazije',
    d.vrsta_djela = 'udžbenik';


// ============================================================
// 3. IZRAZI
// ============================================================

MERGE (i:Izraz {izraz_id: 1})
SET i.jezik = 'engleski',
    i.vrsta_izraza = 'izvorni izraz',
    i.napomena = 'Izvorni tekst djela.';

MERGE (i:Izraz {izraz_id: 2})
SET i.jezik = 'hrvatski',
    i.vrsta_izraza = 'prijevod',
    i.napomena = 'Hrvatski prijevod Mirne Čubranić.';

MERGE (i:Izraz {izraz_id: 3})
SET i.jezik = 'hrvatski',
    i.vrsta_izraza = 'prijevod',
    i.napomena = 'Hrvatski prijevod Tomislava Odlešića.';

MERGE (i:Izraz {izraz_id: 4})
SET i.jezik = 'talijanski',
    i.vrsta_izraza = 'izvorni izraz',
    i.napomena = 'Izvorni tekst djela Rerum vulgarium fragmenta.';

MERGE (i:Izraz {izraz_id: 5})
SET i.jezik = 'hrvatski',
    i.vrsta_izraza = 'prijevod',
    i.napomena = 'Integralni hrvatski prijevod i prepjev korišten u dvojezičnom izdanju Kanconijera iz 1974.';

MERGE (i:Izraz {izraz_id: 6})
SET i.jezik = 'francuski',
    i.vrsta_izraza = 'izvorni izraz',
    i.napomena = 'Izvorni francuski tekst djela En attendant Godot.';

MERGE (i:Izraz {izraz_id: 7})
SET i.jezik = 'engleski',
    i.vrsta_izraza = 'autorski prijevod',
    i.napomena = 'Engleski prijevod Waiting for Godot koji je izradio Samuel Beckett.';

MERGE (i:Izraz {izraz_id: 8})
SET i.jezik = 'hrvatski',
    i.vrsta_izraza = 'prijevod',
    i.napomena = 'Hrvatski prijevod U očekivanju Godota Alke Škiljan.';

MERGE (i:Izraz {izraz_id: 9})
SET i.jezik = 'francuski',
    i.vrsta_izraza = 'izvorni izraz',
    i.napomena = 'Izvorni francuski tekst djela Le Petit Prince.';

MERGE (i:Izraz {izraz_id: 10})
SET i.jezik = 'hrvatski',
    i.vrsta_izraza = 'prijevod',
    i.napomena = 'Hrvatski prijevod Mije Pervan.';

MERGE (i:Izraz {izraz_id: 11})
SET i.jezik = 'hrvatski',
    i.vrsta_izraza = 'prijevod',
    i.napomena = 'Hrvatski prijevod Ivana Kušana.';

MERGE (i:Izraz {izraz_id: 12})
SET i.jezik = 'hrvatski',
    i.vrsta_izraza = 'prijevod',
    i.napomena = 'Hrvatski prijevod Sanje Lovrenčić.';

MERGE (i:Izraz {izraz_id: 13})
SET i.jezik = 'hrvatski',
    i.vrsta_izraza = 'prijevod',
    i.napomena = 'Hrvatski prijevod Roberta Martinova.';

MERGE (i:Izraz {izraz_id: 14})
SET i.jezik = 'hrvatski',
    i.vrsta_izraza = 'izvorni izraz',
    i.napomena = 'Hrvatski izraz udžbenika Psihologija: udžbenik za gimnazije.';


// ============================================================
// 4. POJAVNI OBLICI
// ============================================================

// Pride and Prejudice
MERGE (p:PojavniOblik {pojavni_oblik_id: 1})
SET p.naslov = 'Pride and Prejudice',
    p.izdavac = 'Penguin',
    p.godina_izdavanja = 2006,
    p.isbn = '9780141907215',
    p.format_gradje = 'e-knjiga',
    p.broj_stranica = 432;

MERGE (p:PojavniOblik {pojavni_oblik_id: 2})
SET p.naslov = 'Ponos i predrasude',
    p.izdavac = 'Mozaik knjiga',
    p.godina_izdavanja = 2011,
    p.isbn = '9789531409292',
    p.format_gradje = 'tiskana knjiga',
    p.uvez = 'meki',
    p.broj_stranica = 414;

MERGE (p:PojavniOblik {pojavni_oblik_id: 3})
SET p.naslov = 'Ponos i predrasude',
    p.izdavac = 'Mozaik knjiga',
    p.mjesto_izdavanja = 'Zagreb',
    p.godina_izdavanja = 2025,
    p.isbn = '9789531440417',
    p.format_gradje = 'tiskana knjiga',
    p.uvez = 'tvrdi',
    p.broj_stranica = 412;

MERGE (p:PojavniOblik {pojavni_oblik_id: 4})
SET p.naslov = 'Ponos i predrasude',
    p.izdavac = 'Globus',
    p.mjesto_izdavanja = 'Zagreb',
    p.godina_izdavanja = 2004,
    p.isbn = '9789537160531',
    p.format_gradje = 'tiskana knjiga',
    p.uvez = 'tvrdi',
    p.broj_stranica = 317;

// Petrarca
MERGE (p:PojavniOblik {pojavni_oblik_id: 5})
SET p.naslov = 'Kanconijer',
    p.izdavac = 'Nakladni zavod Matice hrvatske, Hrvatsko filološko društvo, Liber',
    p.mjesto_izdavanja = 'Zagreb / Dubrovnik',
    p.godina_izdavanja = 1974,
    p.format_gradje = 'tiskana knjiga',
    p.broj_stranica = 1197,
    p.dimenzije = '21 cm';

// Beckett
MERGE (p:PojavniOblik {pojavni_oblik_id: 6})
SET p.naslov = 'Waiting for Godot / En attendant Godot',
    p.izdavac = 'Grove Press',
    p.mjesto_izdavanja = 'New York',
    p.godina_izdavanja = 2006,
    p.isbn = '9780802118219',
    p.oznaka_izdanja = 'dvojezično izdanje',
    p.format_gradje = 'tiskana knjiga',
    p.uvez = 'tvrdi',
    p.broj_stranica = 357,
    p.dimenzije = '24 cm';

MERGE (p:PojavniOblik {pojavni_oblik_id: 7})
SET p.naslov = 'U očekivanju Godota',
    p.izdavac = 'Katarina Zrinski',
    p.mjesto_izdavanja = 'Varaždin',
    p.godina_izdavanja = 2020,
    p.isbn = '9789532363227',
    p.oznaka_izdanja = '4. izmijenjeno izdanje',
    p.format_gradje = 'tiskana knjiga',
    p.broj_stranica = 128,
    p.dimenzije = '21 cm';

// Mali princ
MERGE (p:PojavniOblik {pojavni_oblik_id: 8})
SET p.naslov = 'Mali princ',
    p.izdavac = 'Školska knjiga',
    p.mjesto_izdavanja = 'Zagreb',
    p.godina_izdavanja = 2008,
    p.isbn = '9789530603820',
    p.oznaka_izdanja = '7. izdanje',
    p.format_gradje = 'tiskana knjiga',
    p.broj_stranica = 128;

MERGE (p:PojavniOblik {pojavni_oblik_id: 9})
SET p.naslov = 'Mali princ',
    p.izdavac = 'Mozaik knjiga',
    p.mjesto_izdavanja = 'Zagreb',
    p.godina_izdavanja = 2004,
    p.isbn = '9531963789',
    p.format_gradje = 'tiskana knjiga',
    p.broj_stranica = 109,
    p.dimenzije = '20 cm';

MERGE (p:PojavniOblik {pojavni_oblik_id: 10})
SET p.naslov = 'Mali princ',
    p.izdavac = 'Znanje',
    p.mjesto_izdavanja = 'Zagreb',
    p.godina_izdavanja = 2009,
    p.isbn = '9789531958509',
    p.format_gradje = 'tiskana knjiga',
    p.uvez = 'meki',
    p.broj_stranica = 91,
    p.dimenzije = '21 x 16 cm';

MERGE (p:PojavniOblik {pojavni_oblik_id: 11})
SET p.naslov = 'Mali princ',
    p.izdavac = 'Verbum',
    p.mjesto_izdavanja = 'Split',
    p.godina_izdavanja = 2018,
    p.isbn = '9789532354751',
    p.oznaka_izdanja = '3. izdanje',
    p.format_gradje = 'tiskana knjiga',
    p.broj_stranica = 119,
    p.dimenzije = '21 cm';

// Psihologija
MERGE (p:PojavniOblik {pojavni_oblik_id: 12})
SET p.naslov = 'Psihologija: udžbenik za gimnazije',
    p.izdavac = 'Školska knjiga',
    p.mjesto_izdavanja = 'Zagreb',
    p.godina_izdavanja = 1992,
    p.isbn = '8603003866',
    p.format_gradje = 'tiskana knjiga',
    p.broj_stranica = 192,
    p.dimenzije = '24 cm';

MERGE (p:PojavniOblik {pojavni_oblik_id: 13})
SET p.naslov = 'Psihologija: udžbenik za gimnazije',
    p.izdavac = 'Školska knjiga',
    p.mjesto_izdavanja = 'Zagreb',
    p.godina_izdavanja = 1993,
    p.format_gradje = 'tiskana knjiga',
    p.broj_stranica = 192,
    p.dimenzije = '24 cm';


// ============================================================
// 5. PRIMJERCI
// ============================================================

MERGE (pr:Primjerak {primjerak_id: 1})
SET pr.lokacija = 'Gradska knjižnica Franjo Marković Križevci',
    pr.signatura = '820-3 AUSTE pon',
    pr.napomena = 'Primjerak iz knjižničnog kataloga.';

MERGE (pr:Primjerak {primjerak_id: 2})
SET pr.lokacija = 'Gradska knjižnica Franjo Marković Križevci',
    pr.signatura = '850-1 PETRA kan',
    pr.napomena = 'Primjerak iz knjižničnog kataloga.';

MERGE (pr:Primjerak {primjerak_id: 3})
SET pr.lokacija = 'Bibliothèque nationale de France, Tolbiac',
    pr.inventarni_broj = '2006-244601',
    pr.napomena = 'Primjerak dvojezičnog izdanja iz kataloga BnF.';

MERGE (pr:Primjerak {primjerak_id: 4})
SET pr.lokacija = 'Knjižnični fond Rajevo Selo',
    pr.signatura = 'O SAI m',
    pr.inventarni_broj = '39743',
    pr.napomena = 'Prvi primjerak iz knjižničnog kataloga.';

MERGE (pr:Primjerak {primjerak_id: 5})
SET pr.lokacija = 'Knjižnični fond Rajevo Selo',
    pr.signatura = 'O SAI m',
    pr.inventarni_broj = '39860',
    pr.napomena = 'Drugi primjerak iz knjižničnog kataloga.';

MERGE (pr:Primjerak {primjerak_id: 6})
SET pr.lokacija = 'NSK - Zatvoreno spremište',
    pr.signatura = '643.329',
    pr.napomena = 'Primjerak iz kataloga Nacionalne i sveučilišne knjižnice u Zagrebu.';

MERGE (pr:Primjerak {primjerak_id: 7})
SET pr.lokacija = 'NSK - Spremište arhivskih primjeraka',
    pr.signatura = 'A 643.329',
    pr.napomena = 'Arhivski primjerak iz kataloga Nacionalne i sveučilišne knjižnice u Zagrebu.';

MERGE (pr:Primjerak {primjerak_id: 8})
SET pr.lokacija = 'NSK - Spremište arhivskih primjeraka',
    pr.signatura = 'A 649.166',
    pr.napomena = 'Arhivski primjerak iz kataloga Nacionalne i sveučilišne knjižnice u Zagrebu.';

MERGE (pr:Primjerak {primjerak_id: 9})
SET pr.lokacija = 'NSK - Zatvoreno spremište',
    pr.signatura = '649.166',
    pr.napomena = 'Primjerak iz kataloga Nacionalne i sveučilišne knjižnice u Zagrebu.';


// ============================================================
// 6. ODNOSI DJELO - IZRAZ
// ============================================================

MATCH (d:Djelo {djelo_id: 1}), (i:Izraz {izraz_id: 1})
MERGE (d)-[:REALIZIRA_SE_KROZ]->(i);

MATCH (d:Djelo {djelo_id: 1}), (i:Izraz {izraz_id: 2})
MERGE (d)-[:REALIZIRA_SE_KROZ]->(i);

MATCH (d:Djelo {djelo_id: 1}), (i:Izraz {izraz_id: 3})
MERGE (d)-[:REALIZIRA_SE_KROZ]->(i);

MATCH (d:Djelo {djelo_id: 2}), (i:Izraz {izraz_id: 4})
MERGE (d)-[:REALIZIRA_SE_KROZ]->(i);

MATCH (d:Djelo {djelo_id: 2}), (i:Izraz {izraz_id: 5})
MERGE (d)-[:REALIZIRA_SE_KROZ]->(i);

MATCH (d:Djelo {djelo_id: 3}), (i:Izraz {izraz_id: 6})
MERGE (d)-[:REALIZIRA_SE_KROZ]->(i);

MATCH (d:Djelo {djelo_id: 3}), (i:Izraz {izraz_id: 7})
MERGE (d)-[:REALIZIRA_SE_KROZ]->(i);

MATCH (d:Djelo {djelo_id: 3}), (i:Izraz {izraz_id: 8})
MERGE (d)-[:REALIZIRA_SE_KROZ]->(i);

MATCH (d:Djelo {djelo_id: 4}), (i:Izraz {izraz_id: 9})
MERGE (d)-[:REALIZIRA_SE_KROZ]->(i);

MATCH (d:Djelo {djelo_id: 4}), (i:Izraz {izraz_id: 10})
MERGE (d)-[:REALIZIRA_SE_KROZ]->(i);

MATCH (d:Djelo {djelo_id: 4}), (i:Izraz {izraz_id: 11})
MERGE (d)-[:REALIZIRA_SE_KROZ]->(i);

MATCH (d:Djelo {djelo_id: 4}), (i:Izraz {izraz_id: 12})
MERGE (d)-[:REALIZIRA_SE_KROZ]->(i);

MATCH (d:Djelo {djelo_id: 4}), (i:Izraz {izraz_id: 13})
MERGE (d)-[:REALIZIRA_SE_KROZ]->(i);

MATCH (d:Djelo {djelo_id: 5}), (i:Izraz {izraz_id: 14})
MERGE (d)-[:REALIZIRA_SE_KROZ]->(i);


// ============================================================
// 7. ODNOSI OSOBA - DJELO
// ============================================================

MATCH (o:Osoba {osoba_id: 1}), (d:Djelo {djelo_id: 1})
MERGE (o)-[:STVORILA]->(d);

MATCH (o:Osoba {osoba_id: 4}), (d:Djelo {djelo_id: 2})
MERGE (o)-[:STVORILA]->(d);

MATCH (o:Osoba {osoba_id: 9}), (d:Djelo {djelo_id: 3})
MERGE (o)-[:STVORILA]->(d);

MATCH (o:Osoba {osoba_id: 11}), (d:Djelo {djelo_id: 4})
MERGE (o)-[:STVORILA]->(d);

// Psihologija - 7 autora
MATCH (o:Osoba {osoba_id: 16}), (d:Djelo {djelo_id: 5})
MERGE (o)-[:STVORILA]->(d);

MATCH (o:Osoba {osoba_id: 18}), (d:Djelo {djelo_id: 5})
MERGE (o)-[:STVORILA]->(d);

MATCH (o:Osoba {osoba_id: 19}), (d:Djelo {djelo_id: 5})
MERGE (o)-[:STVORILA]->(d);

MATCH (o:Osoba {osoba_id: 20}), (d:Djelo {djelo_id: 5})
MERGE (o)-[:STVORILA]->(d);

MATCH (o:Osoba {osoba_id: 21}), (d:Djelo {djelo_id: 5})
MERGE (o)-[:STVORILA]->(d);

MATCH (o:Osoba {osoba_id: 22}), (d:Djelo {djelo_id: 5})
MERGE (o)-[:STVORILA]->(d);

MATCH (o:Osoba {osoba_id: 23}), (d:Djelo {djelo_id: 5})
MERGE (o)-[:STVORILA]->(d);


// ============================================================
// 8. ODNOSI OSOBA - IZRAZ
// ============================================================

// Pride and Prejudice
MATCH (o:Osoba {osoba_id: 2}), (i:Izraz {izraz_id: 2})
MERGE (o)-[r:DOPRINIJELA]->(i)
SET r.uloga = 'prevoditeljica';

MATCH (o:Osoba {osoba_id: 3}), (i:Izraz {izraz_id: 3})
MERGE (o)-[r:DOPRINIJELA]->(i)
SET r.uloga = 'prevoditelj';

// Petrarca
MATCH (o:Osoba {osoba_id: 5}), (i:Izraz {izraz_id: 5})
MERGE (o)-[r:DOPRINIJELA]->(i)
SET r.uloga = 'prevoditelj';

MATCH (o:Osoba {osoba_id: 6}), (i:Izraz {izraz_id: 5})
MERGE (o)-[r:DOPRINIJELA]->(i)
SET r.uloga = 'prevoditelj';

MATCH (o:Osoba {osoba_id: 7}), (i:Izraz {izraz_id: 5})
MERGE (o)-[r:DOPRINIJELA]->(i)
SET r.uloga = 'prevoditelj';

MATCH (o:Osoba {osoba_id: 8}), (i:Izraz {izraz_id: 5})
MERGE (o)-[r:DOPRINIJELA]->(i)
SET r.uloga = 'prevoditelj';

// Beckett
MATCH (o:Osoba {osoba_id: 9}), (i:Izraz {izraz_id: 7})
MERGE (o)-[r:DOPRINIJELA]->(i)
SET r.uloga = 'prevoditelj';

MATCH (o:Osoba {osoba_id: 10}), (i:Izraz {izraz_id: 8})
MERGE (o)-[r:DOPRINIJELA]->(i)
SET r.uloga = 'prevoditeljica';

// Mali princ
MATCH (o:Osoba {osoba_id: 12}), (i:Izraz {izraz_id: 10})
MERGE (o)-[r:DOPRINIJELA]->(i)
SET r.uloga = 'prevoditeljica';

MATCH (o:Osoba {osoba_id: 13}), (i:Izraz {izraz_id: 11})
MERGE (o)-[r:DOPRINIJELA]->(i)
SET r.uloga = 'prevoditelj';

MATCH (o:Osoba {osoba_id: 14}), (i:Izraz {izraz_id: 12})
MERGE (o)-[r:DOPRINIJELA]->(i)
SET r.uloga = 'prevoditeljica';

MATCH (o:Osoba {osoba_id: 15}), (i:Izraz {izraz_id: 13})
MERGE (o)-[r:DOPRINIJELA]->(i)
SET r.uloga = 'prevoditelj';

// Psihologija - ilustrator
MATCH (o:Osoba {osoba_id: 17}), (i:Izraz {izraz_id: 14})
MERGE (o)-[r:DOPRINIJELA]->(i)
SET r.uloga = 'ilustrator';


// ============================================================
// 9. ODNOSI IZRAZ - POJAVNI OBLIK
// ============================================================

// Pride and Prejudice
MATCH (i:Izraz {izraz_id: 1}), (p:PojavniOblik {pojavni_oblik_id: 1})
MERGE (i)-[:POSTVARUJE_SE_U]->(p);

MATCH (i:Izraz {izraz_id: 2}), (p:PojavniOblik {pojavni_oblik_id: 2})
MERGE (i)-[:POSTVARUJE_SE_U]->(p);

MATCH (i:Izraz {izraz_id: 2}), (p:PojavniOblik {pojavni_oblik_id: 3})
MERGE (i)-[:POSTVARUJE_SE_U]->(p);

MATCH (i:Izraz {izraz_id: 3}), (p:PojavniOblik {pojavni_oblik_id: 4})
MERGE (i)-[:POSTVARUJE_SE_U]->(p);

// Petrarca
MATCH (i:Izraz {izraz_id: 4}), (p:PojavniOblik {pojavni_oblik_id: 5})
MERGE (i)-[:POSTVARUJE_SE_U]->(p);

MATCH (i:Izraz {izraz_id: 5}), (p:PojavniOblik {pojavni_oblik_id: 5})
MERGE (i)-[:POSTVARUJE_SE_U]->(p);

// Beckett
MATCH (i:Izraz {izraz_id: 6}), (p:PojavniOblik {pojavni_oblik_id: 6})
MERGE (i)-[:POSTVARUJE_SE_U]->(p);

MATCH (i:Izraz {izraz_id: 7}), (p:PojavniOblik {pojavni_oblik_id: 6})
MERGE (i)-[:POSTVARUJE_SE_U]->(p);

MATCH (i:Izraz {izraz_id: 8}), (p:PojavniOblik {pojavni_oblik_id: 7})
MERGE (i)-[:POSTVARUJE_SE_U]->(p);

// Mali princ
MATCH (i:Izraz {izraz_id: 10}), (p:PojavniOblik {pojavni_oblik_id: 8})
MERGE (i)-[:POSTVARUJE_SE_U]->(p);

MATCH (i:Izraz {izraz_id: 11}), (p:PojavniOblik {pojavni_oblik_id: 9})
MERGE (i)-[:POSTVARUJE_SE_U]->(p);

MATCH (i:Izraz {izraz_id: 12}), (p:PojavniOblik {pojavni_oblik_id: 10})
MERGE (i)-[:POSTVARUJE_SE_U]->(p);

MATCH (i:Izraz {izraz_id: 13}), (p:PojavniOblik {pojavni_oblik_id: 11})
MERGE (i)-[:POSTVARUJE_SE_U]->(p);

// Psihologija
MATCH (i:Izraz {izraz_id: 14}), (p:PojavniOblik {pojavni_oblik_id: 12})
MERGE (i)-[:POSTVARUJE_SE_U]->(p);

MATCH (i:Izraz {izraz_id: 14}), (p:PojavniOblik {pojavni_oblik_id: 13})
MERGE (i)-[:POSTVARUJE_SE_U]->(p);


// ============================================================
// 10. ODNOSI POJAVNI OBLIK - PRIMJERAK
// ============================================================

MATCH (p:PojavniOblik {pojavni_oblik_id: 3}), (pr:Primjerak {primjerak_id: 1})
MERGE (p)-[:OPRIMJERUJE_SE_U]->(pr);

MATCH (p:PojavniOblik {pojavni_oblik_id: 5}), (pr:Primjerak {primjerak_id: 2})
MERGE (p)-[:OPRIMJERUJE_SE_U]->(pr);

MATCH (p:PojavniOblik {pojavni_oblik_id: 6}), (pr:Primjerak {primjerak_id: 3})
MERGE (p)-[:OPRIMJERUJE_SE_U]->(pr);

MATCH (p:PojavniOblik {pojavni_oblik_id: 9}), (pr:Primjerak {primjerak_id: 4})
MERGE (p)-[:OPRIMJERUJE_SE_U]->(pr);

MATCH (p:PojavniOblik {pojavni_oblik_id: 9}), (pr:Primjerak {primjerak_id: 5})
MERGE (p)-[:OPRIMJERUJE_SE_U]->(pr);

MATCH (p:PojavniOblik {pojavni_oblik_id: 12}), (pr:Primjerak {primjerak_id: 6})
MERGE (p)-[:OPRIMJERUJE_SE_U]->(pr);

MATCH (p:PojavniOblik {pojavni_oblik_id: 12}), (pr:Primjerak {primjerak_id: 7})
MERGE (p)-[:OPRIMJERUJE_SE_U]->(pr);

MATCH (p:PojavniOblik {pojavni_oblik_id: 13}), (pr:Primjerak {primjerak_id: 8})
MERGE (p)-[:OPRIMJERUJE_SE_U]->(pr);

MATCH (p:PojavniOblik {pojavni_oblik_id: 13}), (pr:Primjerak {primjerak_id: 9})
MERGE (p)-[:OPRIMJERUJE_SE_U]->(pr);


// ============================================================
// 11. PROVJERA BROJA ČVOROVA
// ============================================================

MATCH (o:Osoba)
WITH count(o) AS osobe
MATCH (d:Djelo)
WITH osobe, count(d) AS djela
MATCH (i:Izraz)
WITH osobe, djela, count(i) AS izrazi
MATCH (p:PojavniOblik)
WITH osobe, djela, izrazi, count(p) AS pojavni_oblici
MATCH (pr:Primjerak)
RETURN
    osobe,
    djela,
    izrazi,
    pojavni_oblici,
    count(pr) AS primjerci;
