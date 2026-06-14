# TP validation des acquis

## Niveau facile

---

## Niveau moyen


Vous devez préparer une machine Linux pour accueillir les futurs stagiaires.

1. Créez deux utilisateurs : `formateur` et `stagiaire`.
2. Créez un groupe `linux`.
3. Créez une partition dédiée montée sur `/formations`.
4. Configurez les droits pour que les membres du groupe `linux` puissent travailler dans ce répertoire.
5. Installez les outils `tree`, `vim` et `htop`.
6. Créez un fichier `participants.txt` contenant la liste des utilisateurs du système.
7. Sauvegardez ce fichier dans `/formations/sauvegardes`.
8. Créez un lien symbolique vers ce fichier dans le répertoire personnel du formateur.
9. Lancez un processus en arrière-plan et modifier sa priorité.
10. Ecrivez un document contenant toutes les commandes utilisées avec une courte explication pour chacune d'entre elle.

---

## Niveau difficile

11. Créez une nouvelle machine virtuelle depuis Virtual Box
12. Créez et ajoutez 5 disques depuis virtual Box dont les caractéristiques sont :
- Disque 1 : 1Go de stockage
- Disque 2 : 1Go de stockage
- Disque 3 : 1Go de stockage
- Disque 4 : 1Go de stockage
- Disque 5 : 3Go de stockage
13. Montez les différents disques dans le dossier /dev/mnt avec le partitionnement suivant
- Disque 1 : 2 partitions, 1 de 400Mo et l4'autre de 600Mo
- Disque 2 : 2 partitions de 500Mo
- Disque 3 : 1 partition de 1Go
- Disque 4 : 2 partitions, 1 de 800Mo et l'autre de 200Mo
- Disque 5 : 3 partitions de 1Go chacune
15. Mettez en place les montages aux démarrages du système avec les caractéristiques suivantes :
- Disque 1 /dev/sdb1 montée sur /www/js
- Disque 1 /dev/sdb2 montée sur www/libs
- Disque 2 /dev/sdc1 montée sur www/pdfs
- Disque 2 /dev/sdc2 montée sur www/images
- Disque 3 /dev/sdd1 monté sur www/videos
- Disque 4 /dev/sde1 monté sur www/html
- Disque 4 /dev/sde2 monté sur www/css
- Disque 5 /dev/sdf1 monté sur /www/databases
- Disque 5 /dev/sdf2 monté sur /www/divers
- Disque 5 /dev/sdf3 monté sur /www/tmp
16. Supprimez la partition /dev/sdf3, allouez la nouvelle espace disponible à la partition sur la base de données, au final, avoir une nouvelle configuration redimensionné avec 2 partitions, 1 toujours de 1Go  et l'autre de 2Go dédiée à la base de données.

---

## Mini projet : client et serveur Web

17. Créez 2 machines virtuelles, 1 client et un serveur
18. Depuis la VM du serveur installez la suite logiciel LAMP (Linux Apache MySQL/MariaDB PHP)
19. A l'aide du client SSH mettez en place une connexion via les clés entre le client et le Serveur
20. Envoyez des fichiers du client vers le serveur de manière sécurisé au serveur. Les fichiers envoyés doivent être stockées dans /var/uploads
