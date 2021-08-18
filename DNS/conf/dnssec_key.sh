#!/bin/bash

cd /etc/bind/
dnssec-keygen -a NSEC3RSASHA1 -b 2048 -n ZONE l2-7.ephec-ti.be
dnssec-keygen -f KSK -a NSEC3RSASHA1 -b 4096 -n ZONE l2-7.ephec-ti.be


for key in `ls Kl2-7.ephec-ti.be*.key`
do
echo "\$INCLUDE $key">> db.l2-7.ephec-ti.be
done

dnssec-signzone -A -3 $(head -c 1000 /dev/random | sha1sum | cut -b 1-16) -N INCREMENT -o l2-7.ephec-ti.be -t db.l2-7.ephec-ti.be
