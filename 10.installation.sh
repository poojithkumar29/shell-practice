#!/bin/bash


USERID=$(id -u)

if if [ $USERID -ne 0]; then
    echo "ERROR::Please use this script in root privellage "
 exit 1
fi 

dnf install mysql -y