# Future

    ├── ansible
    │   ├── ansible.cfg
    │   ├── dns.yml
    │   ├── docker-compose.yml
    │   ├── docker-grafana.yml
    │   ├── docker-haproxy.yml
    │   ├── docker-prometheus.yml
    │   ├── docker-wordpress.yml
    │   ├── docker.yml
    │   ├── fail2ban.yml
    │   ├── files
    │   │   ├── 1.168.192.in-addr.arpa
    │   │   ├── future05.hipzi
    │   │   └── named.conf
    │   ├── firewall-ansible.yml
    │   ├── firewall-db.yml
    │   ├── firewall-haproxy-monitoring.sh
    │   ├── firewall-nfs.yml
    │   ├── firewall-wordpress.yml
    │   ├── hosts
    │   ├── mysql-exporter.yml
    │   ├── mysql-master-slave.yml
    │   ├── mysql-user-db.yml
    │   ├── mysql.yml
    │   ├── node-exporter.yml
    │   ├── ssh.yml
    │   ├── templates
    │   │   ├── exports.j2
    │   │   ├── my.cnf.j2
    │   │   ├── my.cnf-slave.j2
    │   │   ├── mysql_exporter.sh.j2
    │   │   ├── mysql-master-slave.sh.j2
    │   │   ├── mysql-user-db.sh.j2
    │   │   └── node_exporter.sh.j2
    │   └── vars
    │       ├── monitoring.yml
    │       └── mysql.yml
    ├── docker
    │   ├── grafana
    │   │   ├── docker-compose.yml
    │   │   └── Dockerfile
    │   ├── haproxy
    │   │   ├── config-haproxy.sh
    │   │   ├── docker-compose.yml
    │   │   ├── Dockerfile
    │   │   └── haproxy.cfg
    │   ├── nginx
    │   │   ├── index.html
    │   │   ├── index.php
    │   │   └── nginx.conf
    │   ├── prometheus
    │   │   ├── docker-compose.yml
    │   │   ├── Dockerfile
    │   │   ├── prometheus.yml
    │   │   └── supervisord.conf
    │   └── wordpress
    │       ├── config-php.sh
    │       ├── config-wordpress.sh
    │       ├── docker-compose.yml
    │       ├── Dockerfile
    │       ├── php.ini
    │       ├── supervisord.conf
    │       └── www.conf
    ├── firewall
    │   ├── firewall-ansible.sh
    │   ├── firewall-db.sh
    │   ├── firewall-haproxy-monitoring.sh
    │   ├── firewall-nfs.sh
    │   ├── firewall-wordpress.sh
    │   └── jail.local
    ├── kickstart
        └── ks.cfg
