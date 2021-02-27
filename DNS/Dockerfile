FROM internetsystemsconsortium/bind9:9.16

WORKDIR /etc/bind
WORKDIR /var/cache/bind
WORKDIR /var/lib/bind
WORKDIR /var/log

VOLUME /etc/bind
VOLUME /var/cache/bind
VOLUME /var/lib/bind
VOLUME /var/log

COPY conf/named.conf.options /etc/bind/
COPY conf/named.conf.local /etc/bind/
COPY conf/db.l2-7.ephec-ti.be /etc/bind/zones/

EXPOSE 53 53/udp
CMD ["/usr/sbin/named", "-g", "-c", "/etc/bind/named.conf", "-u", "bind"]