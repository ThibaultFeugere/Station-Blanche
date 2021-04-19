#!/bin/bash

echo "Mise à jour du système en cours"
apt update && sudo apt-upgrade -y

echo "Installation des paquets fixés"
debsecan --suite buster --only-fixed
apt install $(debsecan --suite buster --only-fixed --format packages)

echo "Arrêt du service ClamAV"
systemctl stop clamav-freshclam.service
echo "Mise à jour de la base de données de signatures ClamAV"
fresclam

echo "Audit du système avec Lynis"
lynis audit system
