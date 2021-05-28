FROM ubuntu:bionic

RUN apt-get -y update && apt-get install -y bind9

WORKDIR /etc/bind

VOLUME /etc/bind

EXPOSE 53 53/udp

CMD ["/usr/sbin/named", "-g", "-c", "/etc/bind/named.conf", "-u", "bind"]
