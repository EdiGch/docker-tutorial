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

# MariaDb
* Pobranie obrazu 
* Konfiguracja portu
* Konfiguracja volumenu

```shell
 docker run --name some-mariadb -p 3306:3306 -e MARIADB_USER=example-user -e MARIADB_PASSWORD=pwd -e MARIADB_ROOT_PASSWORD=root-pwd -v /home/gcharkiewicz/myDocker/myApp/docker-tutorial/db/volume-mariadb:/var/lib/mysql mariadb:10.3.29

```

* Uruchom polecenie w zadanym kontenerze
```shell
docker exec -it e104bbf55281 bash 
```
* Wejście do konsoli mariadb
```shell
mysql --user=root --password=root-pwd
SHOW DATABASES;
```
* Wejście do konsoli mariadb (ograniczone prawa)
```shell
mysql --user=example-user --password=pwd
```
## Export bazy danych z kontenera docker
1. Polecenie wykonaj w terminalu paza dockerem
```shell
docker exec e104bbf55281 /usr/bin/mysqldump -u root --password=root-pwd my_mariadb > backup.sql
```

## Import bazy danych do kontenera docker
```shell
1. Stwórz nową bazę danych

mysql --user=root --password=root-pwd
CREATE DATABASE my_mariadb;

2. Teraz wyjdź z powłoki MySQL, naciskając CTRL+D. Wyjdź także z kontenera Docker (nie oznacza zatrzymaj, ma dalej być uruchomiony). W normalnym wierszu poleceń możesz zaimportować plik zrzutu za pomocą następującego polecenia:

docker exec -i e104bbf55281 mysql -u root --password=root-pwd --database=my_mariadb < /home/gcharkiewicz/myDocker/myApp/docker-tutorial/backup.sql
```