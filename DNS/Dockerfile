FROM internetsystemsconsortium/bind9:9.16

WORKDIR /etc/bind
WORKDIR /var/cache/bind
WORKDIR /var/lib/bind
WORKDIR /var/log

VOLUME /etc/bind
VOLUME /var/cache/bind
VOLUME /var/lib/bind
VOLUME /var/log

EXPOSE 53 53/udp

CMD ["/usr/sbin/named", "-g", "-c", "/etc/bind/named.conf", "-u", "bind"]