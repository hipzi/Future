#!/bin/bash

vmName=("haproxy-monitoring" "wordpress-1" "wordpress-2" "nfs" "mariadb-master" "mariadb-slave")
ip=("192.168.1.11" "192.168.1.12" "192.168.1.13" "192.168.1.14" "192.168.1.15" "192.168.1.16")
vmAnsible="ansiblecontroller"
ipAnsible="192.168.1.10"
i=0

for value in "${vmName[@]}"
do 
    sed -i "s/ip=${ip[i-1]}/ip=${ip[i]}/g" ~/packer/kickstart/ks.cfg
    packer build -var "vm_name=$value" -var "output_directory=$value" centos7.json 
    vboxmanage startvm "$value" --type headless
    ((i=i+1))
done

sed -i "s/ip=${ip[5]}/ip=$ipAnsible/g" ~/packer/kickstart/ks.cfg
packer build -var "vm_name=$vmAnsible" -var "output_directory=$vmAnsible" centos7-ansible.json
vboxmanage startvm "$vmAnsible" --type headless
