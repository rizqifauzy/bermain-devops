#!/bin/bash

name=DevOps

namehost=$(hostname)
ip_host=$(ifconfig en0 |grep -w "inet" | awk '{print $2}')

echo -e "Hello $1, selamat datang di pelajaran $name\n"
echo -e "IP komputer Anda adalah $ip_host"

echo -e "Saat ini anda sedang berada di komputer $namehost"

ping $ip_host