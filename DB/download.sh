#!/bin/sh

mkdir scripts

curl -o docker-compose.yml https://raw.githubusercontent.com/CrenierAmaury/Projet-Admin-II/main/DB/docker-compose.yml

curl -o scripts/test.sql https://raw.githubusercontent.com/CrenierAmaury/Projet-Admin-II/main/DB/test.sql
