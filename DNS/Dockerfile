FROM store/internetsystemsconsortium/bind9:9.16

RUN apt-get -y update

WORKDIR /etc/bind

VOLUME ["/etc/bind", "/var/cache/bind", "/var/lib/bind", "/var/log"]

CMD chmod a+x /etc/bind/dnssec_key.sh ; /etc/bind/dnssec_key.sh ; rm /etc/bind/dnssec_key.sh ; /usr/sbin/named -g -c /etc/bind/named.conf -u bind
