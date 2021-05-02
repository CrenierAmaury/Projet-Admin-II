FROM ubuntu:20.04

WORKDIR /etc/bind

VOLUME /etc/bind

EXPOSE 53 53/udp

CMD ["/usr/sbin/named", "-g", "-c", "/etc/bind/named.conf", "-u", "bind"]