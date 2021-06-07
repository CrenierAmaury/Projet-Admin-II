#!/bin/sh

mkdir sites

curl -o docker-compose.yml https://raw.githubusercontent.com/CrenierAmaury/Projet-Admin-II/main/WEB/docker-compose.yml

curl -o sites/woody-toys-vitrine/index.html https://raw.githubusercontent.com/CrenierAmaury/Projet-Admin-II/main/WEB/woody-toys-vitrine/index.html

