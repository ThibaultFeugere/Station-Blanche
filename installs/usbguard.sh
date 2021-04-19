#!/bin/bash

echo "Installation de USBGuard"
sudo apt install -y usbguard

echo "Génération de la politique de USBGuard"
usbguard generate-policy > /etc/usbguard/rules.conf

echo "Démarrage de USBGuard"
systemctl start usbguard.service
systemctl enable usbguard.service
