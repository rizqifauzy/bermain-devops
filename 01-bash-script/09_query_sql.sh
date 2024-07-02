#!/bin/bash

source ./secrets/db_creds.sh

queryDB(){
    sudo mysql -u $USER -p$PASSWORD-e "$1"
}
main() {
    echo "Query database : "
    queryDB "select * from product"
}

#call main function
main