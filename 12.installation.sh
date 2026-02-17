#!/bin/bash

USERID=$(id -u)

if [ $USERID -ne 0]; then
    echo "ERROR :: Please use this script in Root privelage"
    exit 1
fi 

validate(){
    if [ $1 -ne 0]; then
        echo "ERROR :: Installation of $2 is Failure"
        exit 1
    else
        echo "Installation of $2 is Succesfull"
    fi

}

dnf install mysql -y
validate $? "Mysql"

dnf install nginx -y
validate $? "Nginx"