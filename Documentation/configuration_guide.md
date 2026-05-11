# 📖 Guide de Configuration et Hardening 
Ce document détaille les étapes de sécurisation appliquées au serveur. 
## 1. Déploiement des Services 
* **Nginx :** Utilisé comme serveur HTTP.
* **SSH (Secure Shell) :** Protocole de communication chiffré pour l'administration à distance.
* **FTP (File Transfer Protocol) :** Utilisation de `vsftpd` pour le transfert de fichiers.
## 2. Durcissement (Hardening) du Système 
### Politique "Default Deny" (Iptables) 
Nous appliquons une politique de **moindre privilège**. 
Par défaut, tous les flux entrants (`INPUT`) et de transit (`FORWARD`) sont bloqués (`DROP`). 
Seuls les ports nécessaires sont ouverts : 
* **80 (HTTP) :** Pour le trafic web.
* **22 (SSH) :** Pour l'administration.
* **21 (FTP) :** Pour le contrôle du transfert de fichiers.
### Sécurisation SSH 
* Changement du port par défaut (optionnel mais recommandé).
* Désactivation de l'accès direct au compte **root** pour forcer l'usage d'un utilisateur standard avec `sudo`.
### Isolation FTP (Chroot) 
Mise en place d'une **prison (chroot)**. Cela signifie que l'utilisateur FTP est enfermé dans son répertoire personnel (`/home/user/ftp`) et ne peut pas accéder à la racine du système (`/`). 
## 3. Sécurité Web Nginx 
 * **Masquage des bannières :** Désactivation de l'option `server_tokens` pour ne pas divulguer la version exacte de Nginx aux attaquants.
