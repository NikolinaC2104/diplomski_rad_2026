-- ============================================================
-- Kreiranje PostgreSQL baze
-- ============================================================

CREATE DATABASE frbr_diplomski
    WITH
    ENCODING = 'UTF8'
    TEMPLATE = template0;

-- ============================================================
-- Kreiranje relacijske sheme
-- ============================================================
-- Skriptu pokrenuti unutar prazne baze "frbr_diplomski".
-- Strani ključevi zapisani su inline pomoću REFERENCES.
-- ============================================================

-- 5 glavnih tablica koje predstavljaju FRBR entitete
-- 1. OSOBA
CREATE TABLE osoba (
    osoba_id INTEGER PRIMARY KEY,
    ime VARCHAR(100) NOT NULL,
    prezime VARCHAR(150) NOT NULL
);

-- 2. DJELO
CREATE TABLE djelo (
    djelo_id INTEGER PRIMARY KEY,
    naslov VARCHAR(255) NOT NULL,
    vrsta_djela VARCHAR(100),
    godina_prve_objave SMALLINT
);

-- 3. IZRAZ
CREATE TABLE izraz (
    izraz_id INTEGER PRIMARY KEY,
    djelo_id INTEGER NOT NULL REFERENCES djelo(djelo_id),
    jezik VARCHAR(100) NOT NULL,
    vrsta_izraza VARCHAR(100) NOT NULL,
    napomena TEXT
);

-- 4. POJAVNI OBLIK
CREATE TABLE pojavni_oblik (
    pojavni_oblik_id INTEGER PRIMARY KEY,
    naslov VARCHAR(255) NOT NULL,
    izdavac VARCHAR(255),
    mjesto_izdavanja VARCHAR(150),
    godina_izdavanja SMALLINT,
    isbn VARCHAR(20),
    oznaka_izdanja VARCHAR(100),
    format_gradje VARCHAR(100),
    uvez VARCHAR(50),
    broj_stranica INTEGER,
    dimenzije VARCHAR(50)
);

-- 5. PRIMJERAK
CREATE TABLE primjerak (
    primjerak_id INTEGER PRIMARY KEY,
    pojavni_oblik_id INTEGER NOT NULL REFERENCES pojavni_oblik(pojavni_oblik_id),
    lokacija VARCHAR(255),
    signatura VARCHAR(100),
    inventarni_broj VARCHAR(100),
    napomena TEXT
);

-- 3 pomoćne tablice, služe za odnose između entiteta
-- 6. OSOBA_DJELO 
CREATE TABLE osoba_djelo (
    osoba_id INTEGER NOT NULL REFERENCES osoba(osoba_id),
    djelo_id INTEGER NOT NULL REFERENCES djelo(djelo_id),
    PRIMARY KEY (osoba_id, djelo_id)
);

-- 7. OSOBA_IZRAZ 
CREATE TABLE osoba_izraz (
    osoba_id INTEGER NOT NULL REFERENCES osoba(osoba_id),
    izraz_id INTEGER NOT NULL REFERENCES izraz(izraz_id),
    uloga VARCHAR(100) NOT NULL,
    PRIMARY KEY (osoba_id, izraz_id, uloga)
);

-- 8. IZRAZ_POJAVNI_OBLIK
CREATE TABLE izraz_pojavni_oblik (
    izraz_id INTEGER NOT NULL REFERENCES izraz(izraz_id),
    pojavni_oblik_id INTEGER NOT NULL REFERENCES pojavni_oblik(pojavni_oblik_id),
    PRIMARY KEY (izraz_id, pojavni_oblik_id)
);

-- Provjera kreiranih tablica
SELECT table_name
FROM information_schema.tables
WHERE table_schema = 'public'
  AND table_type = 'BASE TABLE'
ORDER BY table_name;
