#!/bin/bash

echo "Mise à jour du système en cours"
sudo apt update && sudo apt-upgrade -y

echo "Arrêt du service ClamAV"
sudo systemctl stop clamav-freshclam.service
echo "Mise à jour de la base de données de signatures ClamAV"
fresclam
