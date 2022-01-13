# Na jakim obrazie będziemy bazować. Uruchomi tymczasowy kontener
# FROM ubuntu
FROM ubuntu

# Każde polecenie uruchamia nam nową warstwę w obrazie.
# Z obecnego katalogu na komputerze, skopjuj plik do obrazu ubuntu
COPY README-Ubuntu.md .

# Polecenie które zostanie uruchomione wewnątrz kontenera
RUN apt-get update
RUN apt-get install --yes vim