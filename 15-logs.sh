#!/bin/bash

USERID=$(id -u)


R="\e[31m"
G="\e[32m"
Y="\e[33m"
N="\e[0m"

LOGS_FOLDER="/var/log/shell-script"
Script_name= $( echo $0 | cut -d "." -f1 )
LOG_FILE="$LOGS_FOLDER/$Script_name.log"

mkdir -p $LOGS_FOLDER
echo "Script executed time :: $(date)"

if [ $USERID -ne 0 ]; then
   echo "ERROR:: Please enter the scripts in ROOT privelage"
   exit 1
fi

validate()
if [ $1 -ne 0 ]; then
    echo "Installation.............Failure"
else
    echo "INstallation.............Sucessfull"
    exit 1
fi

dnf list installed mysql
if [ $? -ne 0 ]; then
  dnf install mysql-server -y
  validate $? "MYSQL"
else 
    echo "Already MYSQL is exsist.........skipping"
fi