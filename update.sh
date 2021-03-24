#!/bin/bash

echo "Mise à jour du système en cours"
sudo apt update && sudo apt-upgrade -y

echo "Mise à jour de la base de données de signatures ClamAV"
fresclam
