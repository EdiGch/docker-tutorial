# Komendy

* Przy pracy z zaientymi portami 

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

* Szukanie plików 
```shell
find -name 7A8545A5802X* = > odp: A8545A5802X-request-20210505-024601-001.txt
/application/web/files/couriers/geodis/imports/2021-05 $ 
find . -name F5043BD722BC*
find . -name '2021-05-12*' -ls
cat 7A8545A5802X-request-20210505-024601-001.txt

```

* Przełączenie między wersjami php
```shell
sudo update-alternatives --config php
```

```shell
1 Wyszukaj aktualny plik php.ini
php -i | grep 'Configuration File'
```