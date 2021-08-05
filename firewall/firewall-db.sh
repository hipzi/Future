#!/bin/bash

iptables -F

# allow SSH
iptables -A INPUT -p tcp --dport 22 -j ACCEPT

# allow HTTP(S)
iptables -A INPUT -p tcp --dport 80 -j ACCEPT
iptables -A INPUT -p tcp --dport 443 -j ACCEPT

# allow connections to and from wordpress and DB
iptables -A INPUT -s 192.168.1.15 -j ACCEPT
iptables -A INPUT -s 192.168.1.16 -j ACCEPT

# allow DB Master & Slave
iptables -A INPUT -s 192.168.1.17 -j ACCEPT
iptables -A INPUT -s 192.168.1.18 -j ACCEPT

# allow mysql-exporter
iptables -A INPUT -p tcp --dport 9104 -j ACCEPT

# allow node-exporter
iptables -A INPUT -p tcp --dport 9100 -j ACCEPT

# Drop all and Logging
iptables -N LOGGING
iptables -A INPUT -j LOGGING
iptables -A LOGGING -m limit --limit 2/min -j LOG --log-prefix "IPTables-Dropped: " --log-level 4
iptables -A LOGGING -j DROP
