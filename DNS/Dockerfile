FROM ubuntu:bionic

RUN apt update && apt upgrade -y
RUN apt install bind9 bind9utils -y
RUN apt install dnsutils -y

CMD named -f
