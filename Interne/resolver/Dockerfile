FROM ubuntu:latest

RUN apt update && apt upgrade -y && apt install bind9 bind9utils dnsutils net-tools -y

COPY named.conf /etc/bind/
COPY named.conf.local /etc/bind/
COPY named.conf.options /etc/bind/

EXPOSE 53/udp
EXPOSE 53/tcp

CMD ["named", "-c", "/etc/bind/named.conf", "-g"]
