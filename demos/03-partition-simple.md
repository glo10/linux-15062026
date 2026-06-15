# Partitionnement

**PS : certaines commandes requièrent d'être root donc ajouter sudo devant la commande.**

En 5 étapes principales :
1. Liste des disques
2. Partiton avec un gestionnaire de disque
3. Formatage de la partion
4. Montage
5. Persistance en modifiant le dossier /etc/fstab

## Méthodologie

1. Ajout d'un disque ou existante d'un disque à partitionner
2. Vérifier les disques détectés par le noyau
```bash
lsblk
```
3. En fonction du résultat, création de la partition à l'aide d'un gestionnaire de commande gdisk par exemple en mode interactif qui prend en argument le disque à partitionner
```bash
gdisk /dev/sdb
# n pour créer une nouvelle partition en répondant aux questions posés
# p pour vérifier 
# w pour écrire
```
4. Formatage de la partition avec le filesystem EXT4
```bash
mkfs.ext4 /dev/sdb1
```
5. Monter la partition dans un point de montage (dossier), il faut que le dossier existe sinon il faut le créer avec 
```bash
# Création dossier
cd /tmp
mkdir demo
# Montage
mount -t ext4 /dev/sdb1 /tmp/demo
```
6. A ce stade la partition est créee et montée mais elle n'est pas persistante donc au redémarrage tout est perdu
7. Pour rendre le montage persistant, il faut modifier le fichier /etc/fstab
```bash
sudo nano /etc/fstab pour y insérer
# Ajouter ses lignes et rengistrer
/dev/sdb1     /tmp/demo    ext4    defaults   0    2
```
8. Vérifier que tout est bon
```bash
mount -a # -a monte tous les disques présents dans /etc/fstab donc avec cette commande on peut omettre à l'étape 5 la commande mount -t ...
df -h
```
9. Rédemarrez et vérifier que la partition montée est présente
```bash
sudo reboot
df -h
```