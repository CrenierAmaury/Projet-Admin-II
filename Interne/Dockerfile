FROM ubuntu:18.04

RUN apt-get update

# Pour la VoIp
RUN apt-get install -y libopal-dev

# Librairie PTLib 
RUN apt-get install -y libpt-dev 
 
# VoIp
RUN apt-get install -y sip-dev
RUN apt-get install -y curl 

RUN apt-get update

# Test de connexion avec d'autre machine, ifconfig, netstat, nameid, route, etc. 
RUN apt-get install -y telnet
RUN apt-get install -y net-tools
