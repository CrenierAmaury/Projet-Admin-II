#!/bin/sh

curl -o docker-compose.yml https://raw.githubusercontent.com/CrenierAmaury/Projet-Admin-II/main/WEB/docker-compose.yml

curl -o index.html https://raw.githubusercontent.com/CrenierAmaury/Projet-Admin-II/main/WEB/woody-toys-vitrine/index.html
curl -o index.php https://raw.githubusercontent.com/CrenierAmaury/Projet-Admin-II/main/WEB/woody-toys-b2b/index.php

curl -o nginx.conf https://raw.githubusercontent.com/CrenierAmaury/Projet-Admin-II/main/WEB/nginx.conf
