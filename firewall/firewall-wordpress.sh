#!/bin/bash

iptables -F

# allow SSH
iptables -A INPUT -p tcp --dport 22 -j ACCEPT

# allow HTTP(S)
iptables -A INPUT -p tcp --dport 80 -j ACCEPT
iptables -A INPUT -p tcp --dport 443 -j ACCEPT

# allow localhost
iptables -A INPUT -s 127.0.0.1 -j ACCEPT

# allow NFS
iptables -A INPUT -p tcp --dport 2049 -j ACCEPT

# allow rpcbind
iptables -A INPUT -p tcp --dport 111 -j ACCEPT

# allow node-exporter
iptables -A INPUT -p tcp --dport 9100 -j ACCEPT

# allow ansible controller to access server
iptables -A INPUT -s 192.168.1.19 -j ACCEPT

# Drop all and Logging
iptables -N LOGGING
iptables -A INPUT -j LOGGING
iptables -A LOGGING -m limit --limit 2/min -j LOG --log-prefix "IPTables-Dropped: " --log-level 4
iptables -A LOGGING -j DROP
