#!/bin/bash

R="\e[31m"
G="\e[32m"
Y="\e[33m"
N="\e[0m"


USERID(id -u)

if [ $USERID -ne 0]; then
    echo -e "ERROR:: Please use this script in $R Root privelage$N"
    exit 1
fi
validate(){
    if [ $1 -ne 0 ]; then
        echo -e "Installation of $2.....$G Failure$N"
    else 
        echo -e "Installation of $2.......$G Succesfull$N"
    fi   }

dnf list installed mysql
if [ $? -ne 0]
    dnf insatll mysql
    validate $? "Mysql"