- name: Transfer and execute a script firewall for haprxy and monitoring server
  hosts: haproxy
  remote_user: hipzi
  become: yes

  tasks:

    - name: Stop and disable firewalld
      service:
        name: firewalld
        state: stopped
        enabled: False

    - name: Creates directory
      file:
        path: /home/hipzi/firewall
        state: directory

    - name: Transfer the script firewall 
      copy: 
        src: /home/hipzi/firewall/firewall-haproxy-monitoring.sh
        dest: /home/hipzi/firewall/firewall-haproxy-monitoring.sh

    - name: Execute the script firewall
      command: bash /home/hipzi/firewall/firewall-haproxy-monitoring.sh
