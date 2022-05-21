* Lista wszystkich kontenerów które nie są włączone 

```shell
docker container ls -a
```

```shell
docker ps -a
```

## Monitorowanie procesu CLI

* Wyświetl uruchomione procesy wewnątrz działającego kontenera 
```shell
docker top 15dc2ff5f0f3
```

* Docker Inspect zawiera szczegółowe informacje o konfiguracji kontenera w trakcie jego uruchomienia
```shell
docker inspect 2asdasdasd (obraz)
```

* Wyświetl transmisję na żywo statystyk wykorzystania zasobów kontenerów
```shell
docker stats 2asdasdasd (obraz)
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

* Usuń wszystkie obrazy
```shell
docker rmi $(docker images -a -q)
```

* Usuń obraz 
```shell
docker rmi nginx
```

* Pobieranie obrazów dokerowych z strony: https://hub.docker.com/

* Pobranie Ubuntu bez jego uruchomienia
```shell
docker pull ubuntu
```

* Uruchomienie **nowego obrazu** ubuntu z możliwością pracy w kontenerze
Po uruchomieniu docker run ubuntu polecenie uruchamia instancję obrazu Ubuntu i natychmiast się kończy. Jeśli miałbyś wymienić działające kontenery, nie zobaczysz działającego kontenera. Jeśli wymienisz wszystkie kontenery, w tym te, które zostały zatrzymane, zobaczysz, że nowy uruchomiony przez ciebie kontener jest w stanie pobudzenia. Dlaczego tak jest? W przeciwieństwie do maszyn wirtualnych kontenery nie są przeznaczone do obsługi systemu operacyjnego. Kontenery są przeznaczone do uruchamiania określonego zadania lub procesu, takiego jak hostowanie instancji serwera WWW lub serwera aplikacji lub bazy danych, albo po prostu do wykonywania jakiegoś zadania obliczeniowego lub analitycznego. Po zakończeniu zadania kontener zostanie zamknięty. Pojemnik żyje tylko tak długo, jak długo trwa proces w nim zawarty. Jeśli usługa sieciowa wewnątrz kontenera zostanie zatrzymana lub ulegnie awarii, kontener zostanie zamknięty. Dlatego po uruchomieniu kontenera z obrazu Ubuntu zatrzymuje się on natychmiast. Ponieważ Ubuntu to tylko obraz systemu operacyjnego, który jest używany jako obraz bazowy dla innych aplikacji. Domyślnie nie działa w nim żaden proces ani aplikacja. Jeśli obraz nie obsługuje żadnej usługi i tak jak w przypadku Ubuntu, możesz poinstruować Docker, aby uruchomił proces za pomocą polecenia docker run. Na przykład polecenie uśpienia trwające pięć sekund. Po uruchomieniu Kontenera uruchamia polecenie uśpienia i przechodzi w stan uśpienia na pięć sekund, po czym polecenie uśpienia kończy się, a Kontener zatrzymuje się. To, co właśnie zobaczyliśmy, to wykonanie polecenia podczas uruchamiania kontenera.
```shell
docker run ubuntu
docker run ubuntu sleep 10
```

* Uruchomienie **nowego obrazu** ubuntu z możliwością pracy w kontenerze 
Docker uruchomił ten kontener ubuntu, a następnie uruchomił polecenie bash, 
a następnie zalogował mnie bezpośrednio do kontenera, ponieważ określiłem opcje -it. 
Więc jestem teraz w kontenerze Docker.
```shell
docker run -it ubuntu bash 
```

* Uruchom polecenie w zadanym kontenerze
```shell
docker exec -it d4359c9a8202 bash 
```

* Uruchamianie pliku Dockerfile. 
```shell
docker build .
```
* Wyświetl listę mapowań portów lub konkretnego mapowania dla kontenera
```shell
docker port CONTAINER
docker run -d -p 80:80 --name webhost nginx:alpine 
docker inspect fe60234f8875 --format '{{ .NetworkSettings.IPAddress }}'
```

* Pokaż sieci
```shell
docker network ls
```

* Zbadaj sieć
```shell
docker network inspect
```

* Tworzenie nowej sieci wirtualnej
```shell
docker network create --driver

docker network create my_custom_app_net

docker container run -d --name new_nginx --network my_custom_app_net nginx:alpine

docker network inspect my_custom_app_net

docker network connect (id network) (id container nginx)
docker network connect efdbebcdc2c7 fe60234f8875
docker network disconnect efdbebcdc2c7 fe60234f8875
```

* Ping DNS
```shell
docker exec -it webhost ping new_nginx

```

```shell
sudo docker service ls
docker network ls
docker network inspect cabroz_net
docker inspect 2asdasdasd (obraz)
docker logs c765a1c4c67e 
```