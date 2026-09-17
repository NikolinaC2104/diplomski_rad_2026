# Usporedba relacijskog modela i NOSQL graf modela baze podataka u ostvarivanju FRBR funkcionalnosti

U ovom se repozitoriju programski kod korišten u praktičnom dijelu diplomskog rada **"Usporedba relacijskog modela i NOSQL graf modela baze podataka u ostvarivanju FRBR funkcionalnosti"**.

Cilj rada je implementirati odabrani dio FRBR modela u relacijskoj i graf bazi podataka te usporediti način modeliranja podataka, predstavljanja odnosa i strukturu funkcionalno jednakih SQL i Cypher upita.
Osam funkcionalnih zahtjeva koji su korišteni u praktičnom dijelu rada nalaze se u datoteci `FRBR_upiti.md`.

## Korištene tehnologije
Za izradu implementacije korišteni su:
- **PostgreSQL** - jezik SQL-a i alat DBeaver
- **Neo4j** - jezik Cypher i Neo4j Browser
- **Docker** - za pokretanje lokalne Neo4j instance koju je moguće reproducirati

## Struktura repozitorija
- `sql/01_kreiranje_baze.sql` - sadrži kod za kreiranje baze, tablica, primarne i strane ključeve
- `sql/02_unos_podataka_relacijski.sql` - sadrži kod za unos bibliografskih podataka
- `sql/03_upiti_U1-U8_relacijski.sql` - sadrži kod za izvođenje upita koji su korišteni u usporedbi

- `cypher/01_ogranicenja.cypher` - kod za definiranje ograničenja jedinstvenosti
- `cypher/02_unos_podataka_graf.cypher` - kod za kreiranje čvorova, svojstava i veza
- `cypher/03_upiti_U1-U8_graf.cypher` - kod za izvođenje funkcionalno ekvivalentnih Cypher upita
- `FRBR_upiti.md` - sadrži funkcionalne upite na temelju kojih se izvršavala usporedba
- `README.md` - upute za pokretanje i redoslijed izvršavanja
- `docker-compose.yml` - za pokretanje Neo4j instance u Dockeru
- `.env.example` - kao predložak za vlastitu .env datoteku s lozinkom

## Relacijska implementacija - PostgreSQL/DBeaver
Sve SQL skripte se nalaze u direktoriju `sql`.
Redoslijed izvršavanja:
1. U DBeaveru kreirati PostgreSQL bazu podataka, otvoriti SQL script i u njega unositi kod
2. Izvesti SQL kod iz datoteke `01_kreiranje_baze.sql`
3. Izvesti SQL kod iz datoteke `02_unos_podataka_relacijski.sql`
4. Izvesti SQL kod iz datoteke `03_upiti_U1-U8_relacijski.sql`

## Graf implementacija - Neo4j/Docker
Neo4j je pokrenut u Docker kontejneru pomoću datoteke `docker-compose.yml`. Potrebno je imati instalirane Docker Desktop i Docker Compose.
1. Kopirati `.env.example` u novu datoteku naziva `.env`, te u njoj postaviti lokalnu lozinku za Neo4j
2. Pokrenuti Neo4j
- U korijenskoj mapi projekta pokrenuti:

```bash
docker compose up -d
```

- Status kontejnera može se provjeriti naredbom:

```bash
docker compose ps
```

- Neo4j Browser nakon pokretanja dostupan je na:

```text
http://localhost:7474
```

- Korisničko ime je:

```text
neo4j
```

- Lozinka je vrijednost postavljena u `.env` datoteci.

3. Kreiranje graf baze
- Sve Cypher skripte se nalaze u direktoriju `cypher`.
- Redoslijed izvršavanja:
- izvesti kod iz datoteke `01_ogranicenja.cypher`
- izvesti kod iz datoteke `02_unos_podataka_graf.cypher`
- izvesti kod iz datoteke `03_upiti_U1-U8_graf.cypher`
4. Zaustavljanje kontejnera
  - naredbom 
  ```bash
  docker compose down
  ```
## Napomena
Provedena usporedba je usmjerena na razlike u:
- modeliranju podataka i odnosa
- načinu povezivanja FRBR entiteta
- strukturi SQL i Cypher upita

