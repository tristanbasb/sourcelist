#!bin/bash

#Si le fichier sources.list existe alors
if [ -f /etc/apt/sources.list ] > /dev/null 2>&1
then
	#Donc copier coller la sources.list pour créer un backup
	cp /etc/apt/sources.list /etc/apt/sources.list.backup

else
	#Sinon création d'un fichier sources.list
	touch /etc/apt/sources.list

fi > /dev/null 2>&1

#Permet d'écrire les lignes à ajouter dans le fichier sources.list
cat <<EOT >> /etc/apt/sources.list
deb http://deb.debian.org/debian/ bullseye main contrib non-free
deb http://security.debian.org/debian-security bullseye-security main contrib non-free
deb http://deb.debian.org/debian/ bullseye-updates main contrib non-free
deb http://deb.debian.org/debian/ bullseye-proposed-updates main contrib non-free
deb http://deb.debian.org/debian/ bullseye-backports main contrib non-free
EOT

#Mise à jour de la machine et de la sources.list
apt-get update -y && apt-get upgrade -y

echo " "

#Permet de vérifier si la commande pour la mise à jour a eu un problème ou non
echo "$?" > /dev/null 2>&1

#Si la commande de mise à jour a abouti alors on affiche un message pour prévenir l utilisateur sinon on affiche un message pour prévenir l utilisateur
if [ $? == 0 ] > /dev/null 2>&1
then
	echo "* La mise à jour n'a pas rencontrer de problème !"
else
	echo "* La mise à jour a rencontrer un problème !"
fi

echo " "

echo "* Voici la nouvelle sources.list :"

echo " "

#Affiche le contenu du fichier sources.list
cat /etc/apt/sources.list

echo " "