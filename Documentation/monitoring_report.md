Ce rapport présente les résultats de l'observation du trafic réseau sur le serveur sécurisé.
 ## 1. Analyse de Protocoles via Tcpdump
 ### Flux ICMP (Internet Control Message Protocol)
Le protocole ICMP est utilisé pour tester la connectivité (Ping).
 * **Commande utilisée :** `sudo tcpdump -i eth0 icmp`
* **Observation :** Lorsque le pare-feu est actif, les paquets ICMP entrants sont ignorés, rendant le serveur "invisible" aux scans de base.
 ### Flux TCP (Transmission Control Protocol)
Analyse du trafic sur le port 80 (Web).
 * **Commande :** `sudo tcpdump -i eth0 port 80`
* **Résultat :** On observe le "Three-way Handshake" (SYN -> SYN-ACK -> ACK) lors de la connexion d'un client au serveur Nginx.
 ## 2. Détection de tentatives d'intrusion
L'analyse des logs système est primordiale pour détecter des comportements suspects.
 * **Fichier analysé :** `/var/log/auth.log`
* **Type d'attaque détectée :** Tentatives de connexion SSH infructueuses (Brute Force).
* **Réponse :** Ces tentatives sont automatiquement rejetées par les règles Iptables après un certain nombre d'échecs.
 ## 3. Conclusion du Monitoring
Le pare-feu remplit son rôle de filtrage. Seuls les flux autorisés dans le script `firewall_config.sh` apparaissent comme "Acceptés" dans les captures de paquets.
