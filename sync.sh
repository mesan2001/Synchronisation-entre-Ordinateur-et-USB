#!/bin/bash

# Définir le chemin vers le dossier sur l'ordinateur
#LOCAL_DIR="/chemin/vers/le/dossier/local"
LOCAL_DIR="/home/messan/USB"

# Dossier sur la clé USB
# Définir le chemin vers le dossier sur la clé USB
#USB_DIR="/chemin/vers/le/dossier/sur/la/clé/USB"
USB_DIR="/media/messan/74ABFFA3627F6363"

# Synchroniser du local vers USB
# La commande rsync copie les fichiers du dossier local vers le dossier sur la clé USB
rsync -av "$LOCAL_DIR/" "$USB_DIR/"

# Synchroniser de l'USB vers local
# La commande rsync copie les fichiers du dossier sur la clé USB vers le dossier local
rsync -av "$USB_DIR/" "$LOCAL_DIR/"

