#!/bin/bash


LOG_FOLDER="/var/log/shell-practice"
script_name=$( echo $0 | cut -d "." -fi)
LOG_FILE="$LOG_FOLDER/$script_name.log"

mkdir -p $LOG_FOLDER
echo "Script Stared executed at : $(date)" tee -a $LOG_FILE