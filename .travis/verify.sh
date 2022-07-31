#!/bin/bash

set -o errexit

verify_phpadmin(){
    curl -sIk http://localhost:8080/ | grep -i phpMyAdmin
    if [ ${?} = 0 ]; then
        echo '[O]  http://localhost:8080/' 
    else
        echo '[X]  http://localhost:8080/'
        exit 1
    fi      
    curl -sIk https://localhost:8443/ | grep -i phpMyAdmin
    if [ ${?} = 0 ]; then
        echo '[O]  http://localhost:8443/' 
    else
        echo '[X]  http://localhost:8443/'
        exit 1
    fi      
}

main(){
    verify_phpadmin
}
main
