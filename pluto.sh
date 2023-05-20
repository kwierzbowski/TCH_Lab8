#!/bin/bash

#Pobierz date i czas
DATA=$(date +"%Y-%m-%d %H:%M:%S")

#Pobierz liczbe uzytej pamięci
UZYTA_PAMIEC=$(free -m | awk '/^Mem/ {printf "%.2f%%", $3*100/$2 }')

#Pobierz calkowita liczbe pamięci
CALKOWITA_PAMIEC=$(free -h --mega | awk '/^Mem/ {printf $2}')

#Zapisz dane do pliku dziennika
echo "${DATA} | Uzyta Pamiec: ${UZYTA_PAMIEC} | Calkowita pamiec: ${CALKOWITA_PAMIEC}" >> info.log