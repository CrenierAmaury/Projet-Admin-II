#!/bin/sh

docker pull he201706/dns

mkdir dns
cd dns
curl -o download.sh https://raw.githubusercontent.com/CrenierAmaury/Projet-Admin-II/main/DNS/download.sh
chmod +x download.sh

./download.sh

docker-compose up -d
