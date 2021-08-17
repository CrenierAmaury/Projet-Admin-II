#!/bin/sh

mkdir sites
mkdir sites/www
mkdir sites/b2b

curl -o docker-compose.yml https://raw.githubusercontent.com/CrenierAmaury/Projet-Admin-II/main/WEB/docker-compose.yml

curl -o sites/www/index.html https://raw.githubusercontent.com/CrenierAmaury/Projet-Admin-II/main/WEB/woody-toys-vitrine/index.html
curl -o sites/b2b/index.php https://raw.githubusercontent.com/CrenierAmaury/Projet-Admin-II/main/WEB/woody-toys-b2b/index.php

curl -o sites/nginx.conf https://raw.githubusercontent.com/CrenierAmaury/Projet-Admin-II/main/WEB/nginx.conf
