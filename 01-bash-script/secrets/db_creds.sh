#!/bin/bash
HOST="<change with ip>"
PORT="3306"
USER="devops"
PASSWORD="userpasswd#321"
DB_NAME="product"

##### Create function to Query DB #####
queryDB(){
    sudo mysql -u $USER -p$PASSWORD-e "$1"
}