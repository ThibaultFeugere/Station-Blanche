#!/bin/bash

echo "Installation des outils nécessaires à la station blanche"

for entry in "installs"/*
do
        sh $entry
done
