# Komendy

## Aktualizacja
* Służy do pobierania informacji o pakietach ze wszystkich skonfigurowanych źródeł.
```shell
sudo apt update
```
* Podniesienie, aktualizacja pakietów z listy 
```shell
sudo apt upgrade
```

## Tipy
* Wyszukanie komend będąca w historii terminala
```shell
ctrl + r
```
* Auto uzupełnianie w terminalu 
```shell
cd app + Tab
```
* Uzyskanie informacj dotyczącej parametrów dla polecenia
```shell
man ls
man mkdir
mkdir --help
```

## Poruszanie się po drzewie katalogów 

* Polecenie cd przenosi nas do katalogu domowego w systemie.
```shell
cd
```
### Tworzenie katalogów 
* Tworzenie katalogów 
```shell
mkdir app
```
### przeglądanie zawartości danego katalogu 
```shell
ls 
ls -l | Przeglądanie listy z szczegółami 
ls -l -a | Przeglądanie listy z ukrytymi katalogami/plikami
ls -la | Przeglądanie listy z ukrytymi katalogami/plikami (Uwaga. Pliki i katalogi zaczynające się od kropki są traktowane jako ukryte) 
ls -lah
```
### Przeglądanie zawartości plików 
```shell
head -n 3 .bash_history | Kilka pierwszych linii pliku
tail -n 3 .bash_history | Kilka ostatnich linii pliku
cat .bash_history | Podejrzenie całego pliku
less .bash_history | Podejrzenie całego pliku w aktywnym terminalu (q zamyka terminal)
wc -l *.md | zliczanie lini kodu
```

### Tworzenie edytowanie pliku 
```shell
touch index.php | Tworzenie pliku
```
### Edytory
* VIM
```shell
vim index.php
i | insert mogę wprowadzać wartość 
esc | wyjście z trybu wprowadzania 
:w | Zapisanie
:q | wyjdź
:wq| Zapisz i wyjdź
```
* Nano
```shell
Łatwiejszy w obsłudze 
```

### Usuwanie plików
```shell
 rm qaz.txt
 rm *.txt | Usunięcie wszystkich plików o danym formacie 
 rm -r | Usunięcie katalogu zawierającego pliki 
```

### szukanie plików w folderze
```shell
find -name '*ME*' | znajdź szystkie pliki zawierające 'ME'
find -name 7A8545A5802X* | = > odp: A8545A5802X-request-20210505-024601-001.txt
find . -name F5043BD722BC*
find . -name '2021-05-12*' -ls
touch ZiEloNY.txt
find -iname '*zielony*'
find -iname '*zielony*' -ls
find -iname '*.md' | znajdź pliki z rozszerzeniem .md
ls | grep README => Wyświetl pliki z nazwa README
ls | grep -v README => Wyświetl pliki z nazwa które NIE zawierają słowa README
```

* Przeszukiwanie plików tekstowych
```shell
grep plik README-Ubuntu.md | Wyszykanie w README-Ubuntu.md nazwy 'plik'
grep plik *.md | Wyszykanie w plikach z końcówką .md nazwy 'plik'
grep plik README-Ubuntu.md | wc -l => Zlicza ilość wystąpień słowa 'plik' w README-Ubuntu.md
```

* Sortowanie wyników 
```shell

```

* Pipe - to polecenie w systemie Linux, które pozwala używać dwóch lub więcej poleceń
```shell
find -name '*ME*' | wc -l => Zlicza ilość wystopień dopasowanych wyników z wyszukania
```

* Uruchomienei w konsoli pliku 
```shell
touch index.php
nano index.php
echo "Wszystko działa";
php index.php
```
* Brak bajtu wykonywalności ? Jak to sprawdzić.
```shell
ls -l skrypt.sh
chmod +x skrypt.sh
```
* Uruchomienei w konsoli pliku 
```shell
touch skrypt.sh
nano skrypt.sh
#!/bin/bash
echo "Wszystko działa"
./skrypt.sh
```

* Informacja o ilości zajętego miejsca w danym katalogu
```shell
sudo du -hs
sudo du -hs docker/
```
* informacje o zużyciu dysku 
```shell
df -h
```

* Przy pracy z zajętymi portami 

```shell
sudo systemctl stop apache2.service
sudo ps aux | grep apache
sudo ps aux | grep http
sudo netstat -atnp
sudo systemctl stop httpd
sudo systemctl stop nginx.service
sudo systemctl disable nginx.service
```


```shell
sudo gedit /etc/hosts
sudo pico /etc/hosts
```

* Przełączenie między wersjami php
```shell
sudo update-alternatives --config php
```

```shell
1 Wyszukaj aktualny plik php.ini
php -i | grep 'Configuration File'
```