FROM ubuntu:20.04

RUN apt-get update && apt-get install bind9

WORKDIR /etc/bind

VOLUME /etc/bind

EXPOSE 53 53/udp

CMD ["/usr/sbin/named", "-g", "-c", "/etc/bind/named.conf", "-u", "bind"]