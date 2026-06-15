# Mode de démarrage systemctl

- Target:
    - poweroff.target : arrêt du système
    - rescue.target : Mono-utilisateur en root
    - multi-user.target : mode texte (console)
    - graphical.target : mode graphique (bureau)
    - reboot.target : redémarrer

## commandes

- Etat du système et modification de la cible
```bash
# cible par défaut au démarrage
systemctl get-default                     # cible par défaut
systemctl set-default multi-user.target   # définir par défaut le mode texte
# État du système
systemctl is-system-running               # running ou degraded => mode normal, maintenance => mode rescue
# Basculer de cible à chaud (sans redémarrer)
systemctl isolate rescue.target           # mode maintenance
systemctl isolate graphical.target        # mode graphique
```
- Arrêt du système
```bash
shutdown -h now                                   # arrêt immédiat
shutdown -r +10                                   # redémarrage dans 10 min
shutdown 22:30 "Maintenance prévue à 22h30"       # arrêt prévue à 22:30
shutdown -c                                       # annuler un arrêt programmé
```