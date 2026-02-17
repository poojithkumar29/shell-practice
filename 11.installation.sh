#!/bin/bash

USERID=$(ID -u)

if [ $USERID -ne 0 ]; then

    echo "ERROR :: Please use this scripts in Root privelage"
    exit 1
fi

dnf install python -y

if [ $? -ne 0 ]; then

    echo "ERROR :: Installation is Failure"
    exit 1
else 

    echo "Installation is succesfull"
fi