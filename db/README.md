# Postgres
* Pobranie obrazu 
* Konfiguracja portu
* Konfiguracja volumenu
```shell
docker run --name pg -e POSTGRES_PASSWORD=pwd -p 5442:5432 -v /home/gcharkiewicz/myDocker/myApp/docker-tutorial/db/volume:/var/lib/postgresql/data postgres

```
* Uruchom polecenie w zadanym kontenerze
```shell
docker exec -it bc81088deeab bash 
```

```shell
psql -V
```
* Wejście do konsoli postgresa
```shell
su - postgres

psql -v ON_ERROR_STOP=1 --username "$POSTGRES_USER" --dbname "$POSTGRES_DB"
```


## Komendy postgress 
* Lista wszystkich kont użytkowników
```shell
\du+
```
* Lista wszystkich baz 
```shell
\l
```