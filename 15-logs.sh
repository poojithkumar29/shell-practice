#!/bin/bash

LOGS_FOLDER="/var/log/shell-script"
Script_name=$( echo $0 | cut -d "." -f1 )
LOG_FILE="$LOGS_FOLDER/$Script_name.log"
mkdir -p $LOGS_FOLDER
    echo "Script are started executed at: $(date)" | tee -a $LOG_FILE