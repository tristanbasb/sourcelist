#!/bin/bash

echo "
Choisir une option :

1/ Debian 10

2/ Debian 11
"

read version

if [ "$version" == "1" ]
then
    rm -r /etc/apt/sources.list
    echo "
    eb http://deb.debian.org/debian/ buster main contrib non-free
    deb-src http://deb.debian.org/debian/ buster main contrib non-free

    deb http://deb.debian.org/debian-security/ buster/updates main contrib non-free
    deb-src http://deb.debian.org/debian-security/ buster/updates main contrib non-free

    deb http://deb.debian.org/debian/ buster-updates main contrib non-free
    deb-src http://deb.debian.org/debian/ buster-updates main contrib non-free
    " >> /etc/apt/sources.list
fi

if [ "$version" == "2" ]
then
    rm -r /etc/apt/sources.list
    echo "
    deb http://deb.debian.org/debian/ bullseye main contrib non-free
    deb-src http://deb.debian.org/debian/ bullseye main contrib non-free
    
    deb http://deb.debian.org/debian-security/ bullseye-security main contrib non-free
    deb-src http://deb.debian.org/debian-security/ bullseye-security main contrib non-free
    
    deb http://deb.debian.org/debian/ bullseye-updates main contrib non-free
    deb-src http://deb.debian.org/debian/ bullseye-updates main contrib non-free
    " >> /etc/apt/sources.list
fi
