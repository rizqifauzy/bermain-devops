#!/bin/bash

source ./source/data
target_server=$(cat ./source/list-Ip)

installTarget() {
    sudo apt update
    sudo apt install nginx mysql-server -y
    #sudo systemctl start mysql.service
    #sudo mysql -u root -e 'ALTER USER 'root'@'%' IDENTIFIED WITH mysql_native_password BY '$mysqlpass';'
}

for i in $target_server; do
    echo "Install package di server $i"
    ssh root@$i "$(typeset -f installTarget); installTarget"
done

#for i in $target_server; do
#    ssh -i ./source/aws-key.pem ubuntu@$i "$(typeset -f installNginx); installNginx"
#done

#for i in $target_server; do
#    sshpass -p $password ssh -p 5432 ubuntu@$i "$(typeset -f installNginx); installNginx"
#done