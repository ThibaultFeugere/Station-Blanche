# Commandes utiles Clamav

## Mettre à jour la base de données de virus

`freshclam`

## Effectuer un scan

`clamscan -i -r -z /path/`

`-i` : pour afficher uniquement quand un fichier est infecté.
`-z` : pour continuer de scanner dans le dossier où un fichier infecté a déjà été détecté.
`-r` : pour scanner de manière récursive

## Redémarrer le daemon

`/etc/init.d/clamav-daemon restart`
