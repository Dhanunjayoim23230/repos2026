#!/bin/bash

USER_ID=$(id -u)

CHECK_ROOT(){
    if [ USER_ID -ne 0 ]
    then
        echo "YOU MUST NEED SUDO PERMISSIONS"
        exit 1
    fi
}

VALIDATE(){
    if [ $1 -eq 0 ]
    then
        echo " $2... :: SUCCESS "
    else
        echo " $2 ...:: FAILED"
        exit 1
    fi
}

CHECK_ROOT

for package in $@
do
    dnf install $package -y
    VALIDATE $? "$package is installing"
done
