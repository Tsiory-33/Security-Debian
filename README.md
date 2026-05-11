# 🛡️ Infrastructure Serveur Sécurisée (Debian 12)
Ce projet consiste à déployer et sécuriser un serveur Linux Debian 12 en automatisant les tâches de configuration des services, du pare-feu et du monitoring. 
 ## 🎯 Objectifs 
 L'objectif principal est de mettre en place une architecture serveur respectant les bonnes pratiques de cybersécurité : 
 1. **Déploiement** de services web (Nginx), de gestion (SSH) et de transfert (FTP).
 2. **Durcissement (Hardening)** via une politique "Default Deny".
3. **Isolation** des utilisateurs via un environnement Chroot.
 4. **Analyse Réseau** proactive des flux entrants et sortants.
 ## 🛠️ Technologies 
 * **OS :** Debian 12
 * **Serveur Web :** Nginx
 * **Pare-feu :** Iptables
 * **Langage :** Bash (Shell Scripting)
 * **Monitoring :** Tcpdump
 ## 🚀 Utilisation
 `sudo chmod +x scripts/*.sh`
 <br>`sudo ./scripts/setup_services.sh`
