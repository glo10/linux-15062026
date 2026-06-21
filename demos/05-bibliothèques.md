# Gestion de paquetages

## Trouver les bibliothèques partagées d'un programme

1. Chercher ou se trouve les sources d'une commande à l'aide de la commande 
```bash
whereis ls
```
2. ldd sur le chemin obtenu pour voir les bibliothèques (dépendances)
```bash
ldd /usr/bin/ls
```
# Variables d'environnement

- Liste complète
```bash
env
```
- Afficher la valeur d'une variable d'envrinnement
```bash
echo $SHELL
```
# APT et DPKG

# Man et --help