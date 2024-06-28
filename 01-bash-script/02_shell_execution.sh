#!/bin/bash

name=DevOps
ip_host=$(ifconfig en0 |grep -w "inet" | awk '{print $2}')

echo -e "Hello $1, selamat datang di pelajaran $name\n"
echo -e "IP komputer Anda adalah $ip_host"
