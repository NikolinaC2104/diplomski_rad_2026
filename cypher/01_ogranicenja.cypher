// ============================================================
// Kreiranje ograničenja jedinstvenosti u Neo4j Browser
// ============================================================

CREATE CONSTRAINT osoba_id_unique IF NOT EXISTS
FOR (o:Osoba)
REQUIRE o.osoba_id IS UNIQUE;

CREATE CONSTRAINT djelo_id_unique IF NOT EXISTS
FOR (d:Djelo)
REQUIRE d.djelo_id IS UNIQUE;

CREATE CONSTRAINT izraz_id_unique IF NOT EXISTS
FOR (i:Izraz)
REQUIRE i.izraz_id IS UNIQUE;

CREATE CONSTRAINT pojavni_oblik_id_unique IF NOT EXISTS
FOR (p:PojavniOblik)
REQUIRE p.pojavni_oblik_id IS UNIQUE;

CREATE CONSTRAINT primjerak_id_unique IF NOT EXISTS
FOR (p:Primjerak)
REQUIRE p.primjerak_id IS UNIQUE;

SHOW CONSTRAINTS;
