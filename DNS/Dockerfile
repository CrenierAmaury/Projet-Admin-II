FROM store/internetsystemsconsortium/bind9:9.16

RUN apt-get -y update

WORKDIR /etc/bind

VOLUME ["/etc/bind", "/var/cache/bind", "/var/lib/bind", "/var/log"]

CMD ["/usr/sbin/named", "-g", "-c", "/etc/bind/named.conf", "-u", "bind"]
