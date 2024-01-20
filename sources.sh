#!/bin/bash


if [ -f "/etc/apt/sources.list" ]; 
then
    cp /etc/apt/sources.list /etc/apt/sources.list.old
fi

echo "
#sources.list pour Debian 10

# Debian Buster, dépôt principal + paquets non libres
deb http://deb.debian.org/debian/ buster main contrib non-free
deb-src http://deb.debian.org/debian/ buster main contrib non-free

# Debian Buster, mises à jour de sécurité + paquets non libres
deb http://deb.debian.org/debian-security/ buster/updates main contrib non-free
deb-src http://deb.debian.org/debian-security/ buster/updates main contrib non-free

# Debian Buster, mises à jour "volatiles" + paquets non libres
deb http://deb.debian.org/debian/ buster-updates main contrib non-free
deb-src http://deb.debian.org/debian/ buster-updates main contrib non-free
" >> /etc/apt/sources.list