#!/bin/bash

echo "Installation des dépendances nécessaires"
sudo apt-get install -y git apt-transport-https build-essential qtchooser qt5-default libjansson-dev libcurl4-openssl-dev git zlib1g-dev

echo "Installation des outils nécessaires à la station blanche"

for entry in "installs"/*
do
        echo $entry
        sh $entry
done
