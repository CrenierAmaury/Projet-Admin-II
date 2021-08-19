#!/bin/sh

curl -o named.conf https://raw.githubusercontent.com/CrenierAmaury/Projet-Admin-II/main/DNS/conf/named.conf
curl -o named.conf.local https://raw.githubusercontent.com/CrenierAmaury/Projet-Admin-II/main/DNS/conf/named.conf.local
curl -o named.conf.options https://raw.githubusercontent.com/CrenierAmaury/Projet-Admin-II/main/DNS/conf/named.conf.options
curl -o db.l2-7.ephec-ti.be https://raw.githubusercontent.com/CrenierAmaury/Projet-Admin-II/main/DNS/conf/db.l2-7.ephec-ti.be
curl -o Dockerfile https://raw.githubusercontent.com/CrenierAmaury/Projet-Admin-II/main/DNS/Dockerfile
