Synchronisation entre l'Ordinateur et la Clé USB

Ce script Bash permet de synchroniser les fichiers entre un dossier sur l'ordinateur et un dossier sur une clé USB. Il utilise la commande rsync pour effectuer la synchronisation 
bidirectionnelle de manière efficace.

Utilisation

    1. Configuration des chemins : Assurez-vous de définir correctement les chemins vers le dossier sur l'ordinateur (LOCAL_DIR) et le dossier sur la clé USB (USB_DIR) dans le script.
    2. Exécution du script : Exécutez le script en utilisant la commande suivante : 
    ./sync_usb.sh
    
Automatisation

Le script peut être automatisé pour s'exécuter périodiquement à l'aide d'un service de planification de tâches tel que cron sous Linux. Voici un exemple de configuration pour exécuter 
le script toutes les minutes :

    1. Ouvrez le fichier de configuration crontab en utilisant la commande : crontab -e
    2. Ajoutez la ligne suivante à la fin du fichier pour exécuter le script toutes les minutes : 
    * * * * * /chemin/vers/le/script/sync_usb.sh
    
    Assurez-vous de remplacer /chemin/vers/le/script par le chemin absolu où se trouve votre script.

 
Exécution lors du Branchement de la Clé USB

  Si vous souhaitez exécuter le script uniquement lorsqu'une clé USB est branchée sur l'ordinateur, vous pouvez utiliser un service de gestion d'événements tels que udev sous Linux.

    1. Installer udev: Si ce n'est pas déjà installé, vous pouvez installer udev en utilisant la commande suivante : sudo apt install udev
    2. Configurer udev : Créez une règle udev pour détecter le branchement de la clé USB et déclencher l'exécution du script. Créez un fichier dans le répertoire /etc/udev/rules.d/ 
    avec une extension .rules, par exemple 99-sync-usb.rules, et ajoutez la règle suivante :
    ACTION=="add", KERNEL=="sd*", SUBSYSTEMS=="usb", RUN+="/chemin/vers/le/script/sync_usb.sh"
    
    Assurez-vous de remplacer /chemin/vers/le/script par le chemin absolu où se trouve votre script.
    
Fonctionnalités

    Synchronisation bidirectionnelle : Le script synchronise les fichiers entre le dossier local et le dossier sur la clé USB dans les deux sens, garantissant que les deux emplacements sont à jour.

    Copie efficace : La commande rsync est utilisée pour effectuer la synchronisation de manière efficace, ne copiant que les fichiers modifiés ou nouveaux.

    Personnalisation : Vous pouvez personnaliser les chemins des dossiers en modifiant les variables LOCAL_DIR et USB_DIR dans le script pour correspondre à votre configuration.

Avertissement

Assurez-vous de vérifier les chemins des dossiers et de sauvegarder vos données importantes avant d'exécuter ce script, car il peut modifier ou supprimer des fichiers dans les dossiers synchronisés.
