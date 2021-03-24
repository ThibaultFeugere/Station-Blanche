#!/bin/bash

echo "   _____ _______    _______ _____ ____  _   _   ____  _               _   _  _____ _    _ ______ "
echo "  / ____|__   __|/\|__   __|_   _/ __ \| \ | | |  _ \| |        /\   | \ | |/ ____| |  | |  ____|"
echo " | (___    | |  /  \  | |    | || |  | |  \| | | |_) | |       /  \  |  \| | |    | |__| | |__   "
echo "  \___ \   | | / /\ \ | |    | || |  | | .   | |  _  | |      / /\ \ | .   | |    |  __  |  __|  "
echo "  ____) |  | |/ ____ \| |   _| || |__| | |\  | | |_) | |____ / ____ \| |\  | |____| |  | | |____ "
echo " |_____/   |_/_/    \_\_|  |_____\____/|_| \_| |____/|______/_/    \_\_| \_|\_____|_|  |_|______|"

echo "Scan antivirus en cours"

path="/home/stationblanche/Bureau/results"
now=$(date)
mkdir -p $path
filename="${path}/results-${now}"
clamresult=$(clamscan -i -r -z /media/)
echo $clamresult > "$filename"

echo "Résultats :"
cat $filename

read -p 'Souhaitez-vous lancer un autre scan ? (Y/n) ' continue

if [ "$continue" == "Y" ]; then
	/home/stationblanche/Téléchargements/qt-virustotal-uploader/VirusTotalUploader
else
	echo "On stop"
	exit
fi
