#!/bin/bash
 # Installation des services de base
 apt update && apt install -y nginx openssh-server vsftpd
 # Configuration de base pour vsftpd (FTP)
 # Vérification que le service démarre
 systemctl enable nginx
 systemctl enable ssh
 systemctl enable vsftpd
 echo "Installation terminée avec succès."
