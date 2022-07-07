#!/bin/bash

echo "
Choisir une option :

1/ Debian 10

2/ Debian 11
"

read version
if [ "$version" != "10" ] && [ "$version" != "11" ]
if [ -f "/etc/apt/sources.list" ]; 
then
    rm -r /etc/apt/sources.list
fi

if [ "$version" == "1" ]
then
    echo "
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
fi

if [ "$version" == "2" ]
then
    echo "
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
fi
