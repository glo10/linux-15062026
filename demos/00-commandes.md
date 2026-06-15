# Commandes

## J1 en plus des commandes vues dans le cours

### Création dossier

```bash
mkdir demo
mkdir -p /tmp/downloads/0626 # arborescence complète création des dossiers parents et enfants
```

### Modification mot de passe

```bash
passwd glodie # redéfinir le mdp de l'utilisateur glodie
```

### Connexion avec un autre utilisateur

```bash
su - root # connexion avec root
su glodie # connection avec glodie
```

### Élévation de privilège

```bash
sudo gdisk /dev/sdb2
```

### Affichages

- less : afficher progressivement
- cat : afficher tout d'un coup

### Filtres

- | : sortie de la commande précédente devient l'entrée de la commande suivante
```bash
dmesg | less
```

---

## J2 en plus des commandes vues dans le cours
