#!/bin/sh

docker pull he201706/dns
docker pull he201706/web
docker pull he201706/php
docker pull he201706/db

mkdir dns
mkdir web
mkdir db

curl -o download.sh https://raw.githubusercontent.com/CrenierAmaury/Projet-Admin-II/main/Prototype/serveur-web-dns/download.sh
chmod +x download.sh

./download.sh

docker-compose up -d
