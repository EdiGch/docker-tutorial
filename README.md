* Lista wszystkich kontenerów które nie są włączone 

```shell
docker container ls -a
```

```shell
docker ps -a
```

* Zatrzymaj jeden lub więcej działających kontenerów

```shell
docker stop
```

* Uruchom jeden lub więcej zatrzymanych kontenerów
```shell
docker start fec7a3099a66
```

* Uruchom polecenie w **Nowym kontenerze**

```shell
docker run
```

* Uruchom polecenie w uruchomionym kontenerze

```shell
docker exec
```

* Wyświetl listę obrazów
```shell
docker image ls
```

* Pobieranie obrazów dokerowych z strony: https://hub.docker.com/

* Pobranie Ubuntu
```shell
docker pull ubuntu
```

* Uruchomienie **nowego obrazu** ubuntu z możliwością pracy w kontenerze 
```shell
docker run -it ubuntu bash 
```

Uruchom polecenie w zadanym kontenerze
```shell
docker exec -it d4359c9a8202 bash 
```



```shell
sudo docker service ls
docker network ls
docker network inspect cabroz_net
docker inspect 2asdasdasd (obraz)
docker logs c765a1c4c67e 
```