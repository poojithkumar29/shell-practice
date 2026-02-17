#!/bin/bash


USERID=$(id -u)

if  [ $USERID -ne 0]; then
    echo "ERROR::Please use this script in root privellage "
    exit 1
fi 

dnf install mysql -y
 
if [ $? -ne 0]; then    
    echo "The MYSQl is not installed succesfully"
    exit 1
else 
    echo "MYSQL is succesfully Installed"
fi