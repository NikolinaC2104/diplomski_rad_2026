-- ============================================================
-- Unos podataka u PostgreSQL bazu
-- ============================================================

-- ako ne prođe unos svih podataka odjednom, raditi unos za po jedan entitet (npr. svi podaci za OSOBA), tada nije potrebno koristiti BEGIN i COMMIT

BEGIN;

-- ============================================================
-- 1. OSOBE
-- ============================================================

INSERT INTO osoba (osoba_id, ime, prezime) VALUES
(1,  'Jane', 'Austen'),
(2,  'Mirna', 'Čubranić'),
(3,  'Tomislav', 'Odlešić'),
(4,  'Francesco', 'Petrarca'),
(5,  'Frano', 'Čale'),
(6,  'Mate', 'Maras'),
(7,  'Tonko', 'Maroević'),
(8,  'Mirko', 'Tomasović'),
(9,  'Samuel', 'Beckett'),
(10, 'Alka', 'Škiljan'),
(11, 'Antoine de', 'Saint-Exupéry'),
(12, 'Mia', 'Pervan'),
(13, 'Ivan', 'Kušan'),
(14, 'Sanja', 'Lovrenčić'),
(15, 'Robert', 'Martinov'),
(16, 'Branimir', 'Šverko'),
(17, 'Joško', 'Marušić'),
(18, 'Slavko', 'Kljaić'),
(19, 'Vladimir', 'Kolesarić'),
(20, 'Mirjana', 'Krizmanić'),
(21, 'Silvija', 'Szabo'),
(22, 'Predrag', 'Zarevski'),
(23, 'Miomir', 'Žužul');


-- ============================================================
-- 2. DJELA
-- ============================================================

INSERT INTO djelo
(djelo_id, naslov, vrsta_djela, godina_prve_objave)
VALUES
(1, 'Pride and Prejudice', 'roman', 1813),
(2, 'Rerum vulgarium fragmenta', 'pjesnička zbirka', NULL),
(3, 'En attendant Godot', 'drama', 1952),
(4, 'Le Petit Prince', 'književno djelo', 1943),
(5, 'Psihologija: udžbenik za gimnazije', 'udžbenik', NULL);


-- ============================================================
-- 3. IZRAZI
-- ============================================================

INSERT INTO izraz
(izraz_id, djelo_id, jezik, vrsta_izraza, napomena)
VALUES
(1, 1, 'engleski', 'izvorni izraz', 'Izvorni tekst djela.'),
(2, 1, 'hrvatski', 'prijevod', 'Hrvatski prijevod Mirne Čubranić.'),
(3, 1, 'hrvatski', 'prijevod', 'Hrvatski prijevod Tomislava Odlešića.'),

(4, 2, 'talijanski', 'izvorni izraz', 'Izvorni tekst djela Rerum vulgarium fragmenta.'),
(5, 2, 'hrvatski', 'prijevod', 'Integralni hrvatski prijevod i prepjev korišten u dvojezičnom izdanju Kanconijera iz 1974.'),

(6, 3, 'francuski', 'izvorni izraz', 'Izvorni francuski tekst djela En attendant Godot.'),
(7, 3, 'engleski', 'autorski prijevod', 'Engleski prijevod Waiting for Godot koji je izradio Samuel Beckett.'),
(8, 3, 'hrvatski', 'prijevod', 'Hrvatski prijevod U očekivanju Godota Alke Škiljan.'),

(9, 4, 'francuski', 'izvorni izraz', 'Izvorni francuski tekst djela Le Petit Prince.'),
(10, 4, 'hrvatski', 'prijevod', 'Hrvatski prijevod Mije Pervan.'),
(11, 4, 'hrvatski', 'prijevod', 'Hrvatski prijevod Ivana Kušana.'),
(12, 4, 'hrvatski', 'prijevod', 'Hrvatski prijevod Sanje Lovrenčić.'),
(13, 4, 'hrvatski', 'prijevod', 'Hrvatski prijevod Roberta Martinova.'),

(14, 5, 'hrvatski', 'izvorni izraz', 'Hrvatski izraz udžbenika Psihologija: udžbenik za gimnazije.');


-- ============================================================
-- 4. POJAVNI OBLICI
-- ============================================================

INSERT INTO pojavni_oblik
(
    pojavni_oblik_id,
    naslov,
    izdavac,
    mjesto_izdavanja,
    godina_izdavanja,
    isbn,
    oznaka_izdanja,
    format_gradje,
    uvez,
    broj_stranica,
    dimenzije
)
VALUES
-- Pride and Prejudice
(1, 'Pride and Prejudice', 'Penguin', NULL, 2006, '9780141907215', NULL, 'e-knjiga', NULL, 432, NULL),
(2, 'Ponos i predrasude', 'Mozaik knjiga', NULL, 2011, '9789531409292', NULL, 'tiskana knjiga', 'meki', 414, NULL),
(3, 'Ponos i predrasude', 'Mozaik knjiga', 'Zagreb', 2025, '9789531440417', NULL, 'tiskana knjiga', 'tvrdi', 412, NULL),
(4, 'Ponos i predrasude', 'Globus', 'Zagreb', 2004, '9789537160531', NULL, 'tiskana knjiga', 'tvrdi', 317, NULL),

-- Petrarca
(5, 'Kanconijer', 'Nakladni zavod Matice hrvatske, Hrvatsko filološko društvo, Liber', 'Zagreb / Dubrovnik', 1974, NULL, NULL, 'tiskana knjiga', NULL, 1197, '21 cm'),

-- Beckett
(6, 'Waiting for Godot / En attendant Godot', 'Grove Press', 'New York', 2006, '9780802118219', 'dvojezično izdanje', 'tiskana knjiga', 'tvrdi', 357, '24 cm'),
(7, 'U očekivanju Godota', 'Katarina Zrinski', 'Varaždin', 2020, '9789532363227', '4. izmijenjeno izdanje', 'tiskana knjiga', NULL, 128, '21 cm'),

-- Mali princ
(8, 'Mali princ', 'Školska knjiga', 'Zagreb', 2008, '9789530603820', '7. izdanje', 'tiskana knjiga', NULL, 128, NULL),
(9, 'Mali princ', 'Mozaik knjiga', 'Zagreb', 2004, '9531963789', NULL, 'tiskana knjiga', NULL, 109, '20 cm'),
(10, 'Mali princ', 'Znanje', 'Zagreb', 2009, '9789531958509', NULL, 'tiskana knjiga', 'meki', 91, '21 x 16 cm'),
(11, 'Mali princ', 'Verbum', 'Split', 2018, '9789532354751', '3. izdanje', 'tiskana knjiga', NULL, 119, '21 cm'),

-- Psihologija
(12, 'Psihologija: udžbenik za gimnazije', 'Školska knjiga', 'Zagreb', 1992, '8603003866', NULL, 'tiskana knjiga', NULL, 192, '24 cm'),
(13, 'Psihologija: udžbenik za gimnazije', 'Školska knjiga', 'Zagreb', 1993, NULL, NULL, 'tiskana knjiga', NULL, 192, '24 cm');


-- ============================================================
-- 5. PRIMJERCI
-- ============================================================

INSERT INTO primjerak
(primjerak_id, pojavni_oblik_id, lokacija, signatura, inventarni_broj, napomena)
VALUES
(1, 3, 'Gradska knjižnica Franjo Marković Križevci', '820-3 AUSTE pon', NULL, 'Primjerak iz knjižničnog kataloga.'),

(2, 5, 'Gradska knjižnica Franjo Marković Križevci', '850-1 PETRA kan', NULL, 'Primjerak iz knjižničnog kataloga.'),

(3, 6, 'Bibliothèque nationale de France, Tolbiac', NULL, '2006-244601', 'Primjerak dvojezičnog izdanja iz kataloga BnF.'),

(4, 9, 'Knjižnični fond Rajevo Selo', 'O SAI m', '39743', 'Prvi primjerak iz knjižničnog kataloga.'),
(5, 9, 'Knjižnični fond Rajevo Selo', 'O SAI m', '39860', 'Drugi primjerak iz knjižničnog kataloga.'),

(6, 12, 'NSK - Zatvoreno spremište', '643.329', NULL, 'Primjerak iz kataloga Nacionalne i sveučilišne knjižnice u Zagrebu.'),
(7, 12, 'NSK - Spremište arhivskih primjeraka', 'A 643.329', NULL, 'Arhivski primjerak iz kataloga Nacionalne i sveučilišne knjižnice u Zagrebu.'),
(8, 13, 'NSK - Spremište arhivskih primjeraka', 'A 649.166', NULL, 'Arhivski primjerak iz kataloga Nacionalne i sveučilišne knjižnice u Zagrebu.'),
(9, 13, 'NSK - Zatvoreno spremište', '649.166', NULL, 'Primjerak iz kataloga Nacionalne i sveučilišne knjižnice u Zagrebu.');


-- ============================================================
-- 6. OSOBA - DJELO
-- ============================================================

INSERT INTO osoba_djelo
(osoba_id, djelo_id)
VALUES
(1, 1),   -- Jane Austen
(4, 2),   -- Francesco Petrarca
(9, 3),   -- Samuel Beckett
(11, 4),  -- Antoine de Saint-Exupéry

-- Psihologija - autori
(16, 5),
(18, 5),
(19, 5),
(20, 5),
(21, 5),
(22, 5),
(23, 5);


-- ============================================================
-- 7. OSOBA - IZRAZ
-- ============================================================

INSERT INTO osoba_izraz
(osoba_id, izraz_id, uloga)
VALUES
-- Pride and Prejudice
(2, 2, 'prevoditeljica'),
(3, 3, 'prevoditelj'),

-- Petrarca
(5, 5, 'prevoditelj'),
(6, 5, 'prevoditelj'),
(7, 5, 'prevoditelj'),
(8, 5, 'prevoditelj'),

-- Beckett
(9, 7, 'prevoditelj'),
(10, 8, 'prevoditeljica'),

-- Mali princ
(12, 10, 'prevoditeljica'),
(13, 11, 'prevoditelj'),
(14, 12, 'prevoditeljica'),
(15, 13, 'prevoditelj'),

-- Psihologija
(17, 14, 'ilustrator');


-- ============================================================
-- 8. IZRAZ - POJAVNI OBLIK
-- ============================================================

INSERT INTO izraz_pojavni_oblik
(izraz_id, pojavni_oblik_id)
VALUES
-- Pride and Prejudice
(1, 1),
(2, 2),
(2, 3),
(3, 4),

-- Petrarca
(4, 5),
(5, 5),

-- Beckett
(6, 6),
(7, 6),
(8, 7),

-- Mali princ
(10, 8),
(11, 9),
(12, 10),
(13, 11),

-- Psihologija
(14, 12),
(14, 13);


COMMIT;


-- ============================================================
-- 9. KONTROLNA PROVJERA BROJA REDAKA
-- ============================================================

SELECT 'osoba' AS tablica, COUNT(*) AS broj_redaka FROM osoba
UNION ALL
SELECT 'djelo', COUNT(*) FROM djelo
UNION ALL
SELECT 'izraz', COUNT(*) FROM izraz
UNION ALL
SELECT 'pojavni_oblik', COUNT(*) FROM pojavni_oblik
UNION ALL
SELECT 'primjerak', COUNT(*) FROM primjerak
UNION ALL
SELECT 'osoba_djelo', COUNT(*) FROM osoba_djelo
UNION ALL
SELECT 'osoba_izraz', COUNT(*) FROM osoba_izraz
UNION ALL
SELECT 'izraz_pojavni_oblik', COUNT(*) FROM izraz_pojavni_oblik
ORDER BY tablica;
