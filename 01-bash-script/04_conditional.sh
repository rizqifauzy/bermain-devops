#!/bin/bash

echo "Interface yang digunakan : "
read interface

name=DevOps
ip_host=$(ifconfig $interface |grep -w "inet" | awk '{print $2}')

echo -e "Hello $1, selamat datang di pelajaran $name\n"

if [ -z $ip_host ]; then
  echo -e "Interfacce tersebut tidak terdapat ipv4"
else
  echo -e "IP komputer Anda adalah $ip_host"
fi
