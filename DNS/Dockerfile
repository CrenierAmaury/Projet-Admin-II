FROM ubuntu:latest

RUN apt-get update && apt-get install -y bind9

WORKDIR /etc/bind

VOLUME /etc/bind

CMD ["/usr/sbin/named", "-g", "-c", "/etc/bind/named.conf", "-u", "bind"]
