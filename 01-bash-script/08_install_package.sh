#!/bin/bash

source ./source/data
target_server=$(cat ./source/list-Ip)

installPackage() {
    sudo apt update
    sudo apt install mysql-server -y
    
    # Start MySQL
    sudo systemctl start mysql
    sudo systemctl enable mysql

    # Set password root MySQL
    sudo mysql -e "ALTER USER 'root'@'localhost' IDENTIFIED WITH 'mysql_native_password' BY '$mysqlrootpass';"

    # Membuat user baru
    sudo mysql -u root -p$mysqlrootpass -e "CREATE USER 'devops'@'%' IDENTIFIED BY '$mysqluserpass';"
    sudo mysql -u root -p$mysqlrootpass -e "GRANT ALL PRIVILEGES ON *.* TO 'devops'@'%' WITH GRANT OPTION;"
    sudo mysql -u root -p$mysqlrootpass -e "FLUSH PRIVILEGES;"

    # Membuat database baru
    sudo mysql -u root -pyour_root_password -e "CREATE DATABASE product;"

    # Memberikan hak akses
    sudo mysql -u root -pyour_root_password -e "GRANT ALL PRIVILEGES ON product.* TO 'devops'@'%';"
    sudo mysql -u root -pyour_root_password -e "FLUSH PRIVILEGES;"
    
    echo "MySQL installation and user creation complete."
}

for i in $target_server; do
    echo "Install package di server $i"
    ssh root@$i "$(typeset -f installPackage); installPackage"
done

#for i in $target_server; do
#    ssh -i ./source/aws-key.pem ubuntu@$i "$(typeset -f installNginx); installNginx"
#done

#for i in $target_server; do
#    sshpass -p $password ssh -p 5432 ubuntu@$i "$(typeset -f installNginx); installNginx"
#done