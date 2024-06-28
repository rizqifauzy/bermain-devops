#!/bin/bash

echo "Interface yang digunakan : "
read interface

name=DevOps
ip_host=$(ifconfig $interface |grep -w "inet" | awk '{print $2}')

echo -e "Hello $1, selamat datang di pelajaran $name\n"
echo -e "IP komputer Anda adalah $ip_host"
