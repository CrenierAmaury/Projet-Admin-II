#!/bin/sh

mkdir conf

curl -o docker-compose.yml https://raw.githubusercontent.com/CrenierAmaury/Projet-Admin-II/main/DNS/docker-compose.yml

curl -o conf/named.conf.default-zones https://raw.githubusercontent.com/CrenierAmaury/Projet-Admin-II/main/DNS/conf/named.conf.default-zones
curl -o conf/named.conf.local https://raw.githubusercontent.com/CrenierAmaury/Projet-Admin-II/main/DNS/conf/named.conf.local
curl -o conf/named.conf.options https://raw.githubusercontent.com/CrenierAmaury/Projet-Admin-II/main/DNS/conf/named.conf.options
curl -o conf/db.l2-7.ephec-ti.be https://raw.githubusercontent.com/CrenierAmaury/Projet-Admin-II/main/DNS/conf/db.l2-7.ephec-ti.be
