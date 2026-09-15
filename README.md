# Usporedba relacijskog modela i NOSQL graf modela baze podataka u ostvarivanju FRBR funkcionalnosti

U ovom se repozitoriju programski kod korišten u praktičnom dijelu diplomskog rada **"Usporedba relacijskog modela i NOSQL graf modela baze podataka u ostvarivanju FRBR funkcionalnosti"**.

Cilj rada je implementirati odabrani dio FRBR modela u relacijskoj i graf bazi podataka te usporediti način modeliranja podataka, predstavljanja odnosa i strukturu funkcionalno jednakih SQL i Cypher upita.

## Korištene tehnologije
Za izradu implementacije korišteni su:
- **PostgreSQL** - jezik SQL-a i alat DBeaver
- **Neo4j** - jezik Cypher i Neo4j Browser
- **Docker** - za pokretanje lokalne Neo4j instance koju je moguće reproducirati

## Struktura repozitorija
`sql/01_create_shema.sql` - sadrži kod za kreiranje tablica, primarne i strane ključeve
`sql/02_insert_data.sql` - sadrži kod za unos bibliografskih podataka
`sql/03_queries_U1-U8.sql` - sadrži kod za izvođenje upita koji su korišteni u usporedbi

`cypher/01_constraints.cypher` - kod za definiranje ograničenja jedinstvenosti
`cypher/02_insert_data.cypher` - kod za kreiranje čvorova, svojstava i veza
`cypher/03_queries_U1-U8.cypher` - kod za izvođenje funkcionalno ekvivalentnih Cypher upita

## Relacijska implementacija - PostgreSQL/DBeaver
Sve SQL skripte se nalaze u direktoriju `sql`.
Redoslijed izvršavanja:
1. U DBeaveru kreirati PostgreSQL bazu podataka, otvoriti SQL script i u njega unositi kod
2. izvesti SQL kod iz datoteke `01_create_schema.sql`
3. izvesti SQL kod iz datoteke `02_insert_data.sql`
4. Izvesti SQL kod iz datoteke `03_queries_U1-U8.sql`

## Graf implementacija - Neo4j/Docker
...
