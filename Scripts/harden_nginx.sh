#!/bin/bash
 # Masquer la version de Nginx dans les en-têtes HTTP
 sed -i 's/# server_tokens off;/server_tokens off;/' /etc/nginx/nginx.conf
 # Vérification de la configuration et redémarrage
 nginx -t && systemctl restart nginx
 echo "Configuration Nginx durcie : bannières masquées."
