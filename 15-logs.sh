#!/bin/bash

USERID=$(id -u)

LOGS_FOLDER="/var/log/shell-script"
Script_name=$( echo $0 | cut -d "." -f1 )
LOG_FILE="$LOGS_FOLDER/$Script_name.log"
mkdir -p $LOGS_FOLDER
    echo "Script are started executed at: $(date)" | tee -a $LOG_FILE

if [$USERID -ne 0]; then 
 echo "ERROR::please run this script in ROOT privelege"
 exit1
fi