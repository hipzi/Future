#!/bin/bash

iptables -F

# allow SSH
iptables -A INPUT -p tcp --dport 22 -j ACCEPT

# allow HTTP(S)
iptables -A INPUT -p tcp --dport 80 -j ACCEPT
iptables -A INPUT -p tcp --sport 80 -j ACCEPT
iptables -A INPUT -p tcp --dport 443 -j ACCEPT

# allow grafana 
iptables -A INPUT -p tcp --dport 3000 -j ACCEPT

# allow prometheus 
iptables -A INPUT -p tcp --dport 9090 -j ACCEPT
iptables -A INPUT -p tcp --sport 9090 -j ACCEPT

# allow alertmanager
iptables -A INPUT -p tcp --dport 9093 -j ACCEPT

# allow send mail alert
iptables -A INPUT -p tcp --dport 587 -j ACCEPT

# allow haproxy statistic 
iptables -A INPUT -p tcp --dport 8404 -j ACCEPT

# allow node-exporter
iptables -A INPUT -p tcp --sport 9100 -j ACCEPT
iptables -A INPUT -p tcp --dport 9100 -j ACCEPT

# allow mysql-exporter
iptables -A INPUT -p tcp --sport 9104 -j ACCEPT

# Drop all and Logging
iptables -N LOGGING
iptables -A INPUT -j LOGGING
iptables -A LOGGING -m limit --limit 2/min -j LOG --log-prefix "IPTables-Dropped: " --log-level 4
iptables -A LOGGING -j DROP
