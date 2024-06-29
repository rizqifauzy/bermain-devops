#!/bin/bash

interface=("en0" "en1" "lo0")

name=DevOps
echo -e "Hello $1, selamat datang di pelajaran $name\n"

for i in "${interface[@]}"; do
    ip_host=$(ifconfig $i |grep -w "inet" | awk '{print $2}')

    if [ -z $ip_host ]; then
        echo -e "Interface $i tidak terdapat ipv4"
    else
        echo -e "Interface $i IPnya adalah $ip_host"
    fi
done
