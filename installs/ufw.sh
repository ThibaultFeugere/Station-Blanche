#!/bin/bash

echo "Installation de UFW"
sudo apt install -y ufw

echo "Configuration de ufw"
sudo systemctl enable ufw
sudo systemctl start ufw

sudo ufw default deny incoming
sudo ufw default deny outgoing
sudo ufw allow out http
sudo ufw allow in http 
sudo ufw allow out https
sudo ufw allow in https
sudo ufw allow out 53
sudo ufw allow git
sudo ufw logging on
sudo ufw enable
