# GNU/LINUX


## Démarrage

- Bios -> GRUB -> Noyau Linux ou OS -> systemd
- systemd premier processus lancer par le noyau et qui sera en charge de lancer tous les autres processus
- On ne peut pas communiquer directement avec systemd il faut passer par la commande intermédiaire systemctl

## Tout est fichier

- Tout est fichier, le noyau lit le matériel et écrit dans les fichiers les informations. Ces informations sont accessibles via les logs avec les commandes
```bash
journalctl
dmesg
```

## Commandes pour voir le matériel

```bash
cat /proc/cpuinfo # info CPU
cat /proc/meminfo # info mémoire
lscpu # CPU
free -h # mémoire
lspci # réseau, carte grapihque
lsusb # usb
lsblk # disques durs
lsmod # dépendances du noyaux
dmesg | grep -i network # avec des filtres on peut pister ce que l'on veut
```

