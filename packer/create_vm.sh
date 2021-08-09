#!/bin/bash

vmName=("ansiblecontroller" "haproxy-monitoring" "wordpress-1" "wordpress-2" "nfs" "mariadb-master" "mariadb-slave")

for value in "${vmName[@]}"
do 
    packer build -var "vm_name=$value" -var "output_directory=$value" centos7.json 
done