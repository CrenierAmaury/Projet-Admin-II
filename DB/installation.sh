#!/bin/sh

docker pull monimage

mkdir db
cd db
curl -o download.sh https://raw.githubusercontent.com/CrenierAmaury/Projet-Admin-II/main/DB/download.sh
chmod +x download.sh

./download.sh

docker-compose up