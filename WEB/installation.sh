#!/bin/sh

docker pull he201706/web

mkdir web
cd web
curl -o download.sh https://raw.githubusercontent.com/CrenierAmaury/Projet-Admin-II/main/WEB/download.sh
chmod +x download.sh

./download.sh

docker-compose up -d