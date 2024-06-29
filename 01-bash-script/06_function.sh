#!/bin/bash

siapa=$1
name=DevOps

sayHello() {
  echo -e "Hello $siapa, selamat datang di pelajaran $name\n"
}

sayGreet() {
  echo -e "Hello $1, selamat datang di pelajaran $2\n"
}

sayHello

sayGreet "Fauzy" "Linux"
