# Utilitaires IONEX
Voici quelques utilitaires pour travailler avec fichiers IONEX. Ces fonctions
n'ont pas aucunes dépendances en scripts externes.  Vous pouvez trouver un lien
au standard IONEX 1.1 [ici](http://ftp.aiub.unibe.ch/ionex/draft/ionex11.pdf).

Manifeste de fonctions:
* **load_ionex** - charger les contenus d'un fichier IONEX (seulement se
    soutient IONEX version 1.1) en un tableau MATLAB avec les colonnes:
    'Latitude', 'Longitude', 'Altitude', et 'TEC' (Contenu Électronique Total).
    Actuellement ne se contrôle pas des erreurs ou valider le fichier et se
    produira une erreur si le fichier à 'chemin_de_fichier' n'adhère pas
    strictement au standard IONEX 1.1.
