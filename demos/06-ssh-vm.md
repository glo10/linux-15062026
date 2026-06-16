# Mise en place d'un réseau privé avec la machine hôte pour une connexion à la VM  avec un client de la machine hôte

1. Mise en place du ssh
```bash
su -
apt install openssh-server # uniquement si ssh n'est pas déjà installé
systemctl status ssh
systemctl enable --now ssh # uniquement s'il n'est pas démarrée (enable)
```
2. Eteignez la VM et Via Virtuabox dans configuration > Expert > Réseau > Adaptateur 2 ajoutez une nouvelle carte réseau en choisissant l'option réseau privé hôte et en gardant les autres infos par défaut puis démarrez la VM
3. réseau
```bash
ip a # voir l'état du réseau (3 interfaces normalement et c'est enp0s8 qui nous intéresse qui doit être à UP)
ip -4 a # filtre pour afficher les adresses IPV4
# Si l'IPV4 pour le réseau enp0s8 ou que le réseau n'est pas UP mais DOWN faites les manip suivantes
sudo nano /etc/network/interfaces
## Ajoutez ses lignes à la fin et enregistrez
allow-hotplug enp0s8
iface enp0s8 inet dhcp
# Redémarrez le service réseau
sudo systemctl restart networking # si tout est bon il redémarre sinon il affiche les erreurs
```
4. Récupérez l'IPV4 pour vous connecter via PowerShell ou un autre client
```bash
ip -4 a
# Depuis le client Windows, ici par exemple la VM via le réseau enp0s8 a l'adresse 192.168.99.101 et mon utilisateur est glodie
ssh glodie@192.168.99.101 -p 11
```
5. Désormais la VM peut être lancé en mode détachée sans écran sur VirtualBox
- Cliquez sur la flèche en bas de "Démarrer" pour choisir cette option.