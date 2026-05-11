#!/bin/bash
 # Flush des règles existantes
 iptables -F
 # Politique Default Deny (Tout ce qui n'est pas autorisé est interdit)
 iptables -P INPUT DROP
 iptables -P FORWARD DROP
 iptables -P OUTPUT ACCEPT
 # Autorisation des connexions établies (évite de couper les sessions en cours)
 iptables -A INPUT -m state --state ESTABLISHED,RELATED -j ACCEPT
 # Autorisation de Loopback (indispensable pour le système)
 iptables -A INPUT -i lo -j ACCEPT
# Ouverture des ports spécifiques 
 iptables -A INPUT -p tcp --dport 22 -j ACCEPT # SSH
 iptables -A INPUT -p tcp --dport 80 -j ACCEPT # HTTP
 iptables -A INPUT -p tcp --dport 21 -j ACCEPT # FTP
 echo "Le pare-feu est désormais actif en mode restrictif."
