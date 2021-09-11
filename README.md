# Future
    
    
    ├── ansible
    │   ├── ansible.cfg
    │   ├── automation.yml
    │   ├── docker.yml
    │   ├── fail2ban.yml
    │   ├── haproxy.yml
    │   ├── hosts
    │   ├── mariadb.yml
    │   ├── monitoring.yml
    │   ├── nfs_server.yml
    │   ├── node_exporter.yml
    │   ├── pass.txt
    │   ├── roles
    │   │   ├── alertmanager
    │   │   │   ├── handlers
    │   │   │   │   └── main.yml
    │   │   │   └── tasks
    │   │   │       ├── alertmanager.yml
    │   │   │       ├── firewall.yml
    │   │   │       └── main.yml
    │   │   ├── docker
    │   │   │   ├── handlers
    │   │   │   │   └── main.yml
    │   │   │   └── tasks
    │   │   │       ├── docker_compose.yml
    │   │   │       ├── docker.yml
    │   │   │       └── main.yml
    │   │   ├── fail2ban
    │   │   │   ├── defaults
    │   │   │   │   └── main.yml
    │   │   │   ├── handlers
    │   │   │   │   └── main.yml
    │   │   │   ├── tasks
    │   │   │   │   ├── fail2ban.yml
    │   │   │   │   └── main.yml
    │   │   │   └── templates
    │   │   │       └── jail.local
    │   │   ├── grafana
    │   │   │   ├── handlers
    │   │   │   │   └── main.yml
    │   │   │   └── tasks
    │   │   │       ├── firewall.yml
    │   │   │       ├── grafana.yml
    │   │   │       └── main.yml
    │   │   ├── haproxy
    │   │   │   ├── handlers
    │   │   │   │   └── main.yml
    │   │   │   └── tasks
    │   │   │       ├── firewall.yml
    │   │   │       ├── haproxy.yml
    │   │   │       └── main.yml
    │   │   ├── mariadb
    │   │   │   ├── defaults
    │   │   │   │   └── main.yml
    │   │   │   ├── handlers
    │   │   │   │   └── main.yml
    │   │   │   ├── tasks
    │   │   │   │   ├── main.yml
    │   │   │   │   ├── mariadb_exporter.yml
    │   │   │   │   ├── mariadb_user_db.yml
    │   │   │   │   └── mariadb.yml
    │   │   │   └── templates
    │   │   │       ├── mysql_exporter.sh.j2
    │   │   │       └── mysql-user-db.sh.j2
    │   │   ├── mariadb_master
    │   │   │   ├── defaults
    │   │   │   │   └── main.yml
    │   │   │   ├── handlers
    │   │   │   │   └── main.yml
    │   │   │   ├── tasks
    │   │   │   │   ├── main.yml
    │   │   │   │   └── mariadb_master.yml
    │   │   │   └── templates
    │   │   │       └── my.cnf.j2
    │   │   ├── mariadb_slave
    │   │   │   ├── defaults
    │   │   │   │   └── main.yml
    │   │   │   ├── handlers
    │   │   │   │   └── main.yml
    │   │   │   ├── tasks
    │   │   │   │   ├── main.yml
    │   │   │   │   └── mariadb_slave.yml
    │   │   │   └── templates
    │   │   │       ├── my.cnf-slave.j2
    │   │   │       └── mysql-master-slave.sh.j2
    │   │   ├── nfs
    │   │   │   ├── defaults
    │   │   │   │   └── main.yml
    │   │   │   ├── handlers
    │   │   │   │   └── main.yml
    │   │   │   ├── tasks
    │   │   │   │   ├── main.yml
    │   │   │   │   └── nfs.yml
    │   │   │   └── templates
    │   │   │       ├── config-wordpress.sh.j2
    │   │   │       └── exports.j2
    │   │   ├── node_exporter
    │   │   │   ├── defaults
    │   │   │   │   └── main.yml
    │   │   │   ├── handlers
    │   │   │   │   └── main.yml
    │   │   │   ├── tasks
    │   │   │   │   ├── main.yml
    │   │   │   │   └── node_exporter.yml
    │   │   │   └── templates
    │   │   │       └── node_exporter.sh.j2
    │   │   ├── prometheus
    │   │   │   ├── handlers
    │   │   │   │   └── main.yml
    │   │   │   └── tasks
    │   │   │       ├── firewall.yml
    │   │   │       ├── main.yml
    │   │   │       └── prometheus.yml
    │   │   ├── ssh
    │   │   │   ├── handlers
    │   │   │   │   └── main.yml
    │   │   │   └── tasks
    │   │   │       ├── main.yml
    │   │   │       └── ssh.yml
    │   │   ├── wordpress
    │   │   │   ├── defaults
    │   │   │   │   └── main.yml
    │   │   │   ├── handlers
    │   │   │   │   └── main.yml
    │   │   │   ├── meta
    │   │   │   │   └── main.yml
    │   │   │   └── tasks
    │   │   │       ├── firewall.yml
    │   │   │       ├── main.yml
    │   │   │       ├── nfs_client.yml
    │   │   │       └── wordpress.yml
    │   │   └── wordpress_installation
    │   │       └── tasks
    │   │           ├── main.yml
    │   │           └── wordpress_installation.yml
    │   ├── ssh.yml
    │   └── wordpress.yml
    ├── docker
    │   ├── alertmanager
    │   │   ├── alertmanager.yml
    │   │   ├── docker-compose.yml
    │   │   └── Dockerfile
    │   ├── grafana
    │   │   ├── dashboards
    │   │   │   ├── dashboards.yml
    │   │   │   ├── haproxy.json
    │   │   │   ├── mysql.json
    │   │   │   └── node-exporter.json
    │   │   ├── datasources
    │   │   │   └── prometheus.yml
    │   │   ├── docker-compose.yml
    │   │   └── Dockerfile
    │   ├── haproxy
    │   │   ├── docker-compose.yml
    │   │   ├── Dockerfile
    │   │   └── haproxy.cfg
    │   ├── nginx
    │   │   ├── Dockerfile
    │   │   └── nginx.conf
    │   ├── phpfpm
    │   │   ├── config-php.sh
    │   │   ├── docker-compose.yml
    │   │   └── Dockerfile
    │   └── prometheus
    │       ├── docker-compose.yml
    │       ├── Dockerfile
    │       ├── prometheus.yml
    │       └── rules.yml
    ├── packer
    │   ├── centos7-ansible.json
    │   ├── centos7.json
    │   ├── create_vm.sh
    │   ├── install_packer.sh
    │   └── kickstart
    │       └── ks.cfg
    └── README.md



