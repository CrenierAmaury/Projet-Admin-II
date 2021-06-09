#!/bin/sh

docker pull he201706/dns
docker pull he201706/web

mkdir dns
mkdir web

curl -o download.sh https://raw.githubusercontent.com/CrenierAmaury/Projet-Admin-II/main/Prototype/serveur-web-dns/download.sh
chmod +x download.sh

./download.sh

docker-compose up -d
