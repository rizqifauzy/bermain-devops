#!/bin/bash

ips=$(cat ./source/list-Ip)
source ./source/data
source ./source/func.sh

echo "Hello $name, selamat datang di pelajaran Devops\n"

for i in "${interface[@]}"; do
    ip_host=$(ifconfig $i |grep -w "inet" | awk '{print $2}')

    if [ -z $ip_host ]; then
        echo "Interface $i tidak terdapat ipv4"
    else
        echo "Interface $i IPnya adalah $ip_host"
    fi
done

echo "########"
listing

for i in $ips; do
    echo $i
done