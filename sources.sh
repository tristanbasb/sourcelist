#!/bin/bash

if [ -f "/etc/apt/sources.list" ]; 
then
    cp /etc/apt/sources.list /etc/apt/sources.list.old
fi

echo "
#sources.list pour Debian 11

# Debian Bullseye, dépôt principal + paquets non libres
deb http://deb.debian.org/debian/ bullseye main contrib non-free
deb-src http://deb.debian.org/debian/ bullseye main contrib non-free

# Debian Bullseye, mises à jour de sécurité + paquets non libres
deb http://deb.debian.org/debian-security/ bullseye-security main contrib non-free
deb-src http://deb.debian.org/debian-security/ bullseye-security main contrib non-free

# Debian Bullseye, mises à jour "volatiles" + paquets non libres
deb http://deb.debian.org/debian/ bullseye-updates main contrib non-free
deb-src http://deb.debian.org/debian/ bullseye-updates main contrib non-free
" >> /etc/apt/sources.list