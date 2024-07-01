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

list_ip=("192.168.1.30" "127.0.0.1")

#for i in "${list_ip[@]}"; do
#  ping $i -c 5
#done

echo "##Ambil semua interfaces####"
semua_interface=$(ifconfig |grep mtu | awk '{print $1}' | awk -F":" '{print $1}')

for i in $(echo $semua_interface); do
  
  ip=$(ifconfig $i |grep -w "inet" | awk '{print $2}')
  
  echo $ip

  if [ -z $ip ]; then
    echo ""
  else
    ping $ip -c 1
  fi
done