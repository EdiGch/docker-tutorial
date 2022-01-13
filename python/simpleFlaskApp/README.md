# Konteneryzacja aplikacji konsolowej i webowej

* Budowa
```shell
docker build -t pyapp:web .
```

* Uruchomienie

```shell
docker run --publish 5000 pyapp:web
```
