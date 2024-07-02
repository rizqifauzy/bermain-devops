#!/bin/bash

source ./secrets/db_creds.sh

main() {
    queryDB "select * from product"
}

main