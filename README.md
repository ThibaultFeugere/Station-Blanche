# Station Blanche

## Définitions 

**Station blanche :** Poste de travail isolé du réseau opérationnel dédié à l'analyse des médias amovibles afin de déterminer si elle peut être utilisée sur ledit réseau.  

## Constat

Enormément de piratage passent par les médias amovibles. Les attaquants joue sur un maillon faible, l'humain qui a un défaut : la curiosité.

Il est très simple de laisser une clé usb infectée par terre, en plein milieu d'un couloir ou devant les bureaux d'une entreprise que vous ciblez.

La curiosité de l'humain va alors le pousser à brancher la clé usb sur son poste et il n'y a pas énormément de moyen de s'assurer de la légitimité des données 
avant de l'avoir branchée. Si l'antivirus prévient l'utilisateur, il y a de grandes chance pour qu'il accepte le risque. Tout un réseau peut alors être compromis.

Une solution peut être de mettre en place une station blanche.

## Respect du DICT

| Bien sensibles   | D | I | C | T |
|---|---|---|---|---|
| Logiciels du produit | X | X |   | X |
| Journaux d'évènements | X | X |   |  |
| Journaux de transfert de fichiers | X | X |   | X |
| Données des fichiers à analyser |  | X |   |  |
| Résultats d'analyse |  |  | X |  |

Logiciels du produit : Les logiciels du produit (système d’exploitation, application, base de signatures virales, etc.) sont considérés comme des biens sensibles. Ils doivent être protégés en disponibilité, intégrité et authenticité.

Journaux d'évènements : Les évènements de sécurité sont journalisés localement et de façon déportée. Ce bien est à protéger en disponibilité et intégrité. Les journaux doivent être également authentifiés lorsqu’ils sont déportés

Journaux de transfert de fichiers : Les informations liées au transfert de fichier(s) sont journalisées localement et de façon déportée. Ce bien est à protéger en disponibilité et intégrité. Les journaux doivent être également authentifiés lorsqu’ils sont déportés.

Données des fichiers à analyser : Le fichier à analyser doit être protégé en intégrité

Résultat d'analyse : Les données issues de l’analyse du fichier par le produit doivent être protégées en confidentialité.

## Système d'exploitation d'une station blanche

Pas encore déterminé

## Menaces à prendre en compte sur une Station Blanche

Les menaces peuvent provenir de différents horizons :

- Utilisateur légitime : insertion d'un média compromis ou réalisation d'une erreur de manipulation.

- Utilisateur non autorisé : accès physique à la station blanche.

- Attaquant avec droits administrateurs : l’attaquant a réussi à compromettre le compte d’un administrateur.
