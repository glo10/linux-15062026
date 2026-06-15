# Mode rescue

- 2 cas de figure :
    - Un problème detecté par le noyau et automatiquement au démarrage il bascule en mode rescue
    - De vous même, vous basculé en mode rescue avec la commande
    ```bash
    systemctl isolate rescue.target
    ```

## Résolution à cause d'une mauvaise configuration du fichier /etc/fstab

1. Se connecter en tant que root
2. S'assurer que vous êtes en mode rescue
```bash
systemctl is-system-running # réponse maintenance
```
3. Normalement, le système démarre en lecture seul avec le minimum de service lancé et vous n'avez pas les droits décriture. Dans ce cas, avec la commande suivante ajoutez les droits d'écrite
```bash
mount -o remount,rw /
```
4. Éditez le fichier /etc/fstab pour corriger
5. Reboot
