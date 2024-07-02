#!/bin/bash
source ./secrets/db_creds.sh

queryDB() {
    local query="$1"
    sudo mysql -h "$HOST" -u "$USER" -p"$PASSWORD" -e "$query"
}
main() {
    echo "Query database : "
    queryDB "SHOW DATABASES;"
}
#call main function
main