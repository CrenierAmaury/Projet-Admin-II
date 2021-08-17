#!/bin/sh

curl -o docker-compose.yml https://raw.githubusercontent.com/CrenierAmaury/Projet-Admin-II/main/Prototype/serveur-web-dns/docker-compose.yml

cd dns
mkdir conf

curl -o conf/named.conf https://raw.githubusercontent.com/CrenierAmaury/Projet-Admin-II/main/DNS/conf/named.conf
curl -o conf/named.conf.local https://raw.githubusercontent.com/CrenierAmaury/Projet-Admin-II/main/DNS/conf/named.conf.local
curl -o conf/named.conf.options https://raw.githubusercontent.com/CrenierAmaury/Projet-Admin-II/main/DNS/conf/named.conf.options
curl -o conf/db.l2-7.ephec-ti.be https://raw.githubusercontent.com/CrenierAmaury/Projet-Admin-II/main/DNS/conf/db.l2-7.ephec-ti.be

cd ../web
mkdir sites
mkdir sites/www
mkdir sites/b2b

curl -o sites/www/index.html https://raw.githubusercontent.com/CrenierAmaury/Projet-Admin-II/main/WEB/woody-toys-vitrine/index.html
curl -o sites/b2b/index.php https://raw.githubusercontent.com/CrenierAmaury/Projet-Admin-II/main/WEB/woody-toys-b2b/index.php

curl -o sites/nginx.conf https://raw.githubusercontent.com/CrenierAmaury/Projet-Admin-II/main/WEB/nginx.conf

cd ../db
mkdir scripts

curl -o scripts/test.sql https://raw.githubusercontent.com/CrenierAmaury/Projet-Admin-II/main/DB/test.sql

cd ..
