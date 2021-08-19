#!/bin/sh

curl -o docker-compose.yml https://raw.githubusercontent.com/CrenierAmaury/Projet-Admin-II/main/Interne/docker-compose.yml
mkdir soa
curl -o soa/Dockerfile https://raw.githubusercontent.com/CrenierAmaury/Projet-Admin-II/main/Interne/soa/Dockerfile
curl -o soa/named.conf https://github.com/CrenierAmaury/Projet-Admin-II/blob/main/Interne/soa/named.conf
curl -o soa/named.conf.local https://github.com/CrenierAmaury/Projet-Admin-II/blob/main/Interne/soa/named.conf.local
curl -o soa/named.conf.options https://github.com/CrenierAmaury/Projet-Admin-II/blob/main/Interne/soa/named.conf.options
curl -o soa/woodytoys.intern https://github.com/CrenierAmaury/Projet-Admin-II/blob/main/Interne/soa/woodytoys.intern

mkdir resolver
curl -o resolver/Dockerfile https://github.com/CrenierAmaury/Projet-Admin-II/blob/main/Interne/resolver/Dockerfile
curl -o resolver/named.conf https://github.com/CrenierAmaury/Projet-Admin-II/blob/main/Interne/resolver/named.conf
curl -o resolver/named.conf.local https://github.com/CrenierAmaury/Projet-Admin-II/blob/main/Interne/resolver/named.conf.local
curl -o resolver/named.conf.options https://github.com/CrenierAmaury/Projet-Admin-II/blob/main/Interne/resolver/named.conf.options
