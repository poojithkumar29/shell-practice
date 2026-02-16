#!/bin/bash


#special variables


echo "All passed variables : $@"
echo "All passed variables: $*"
echo "Script name : $0"
echo "current directory :$PWD"
echo "Who is running: $USER"
echo "pid of the directory: $$"
sleep 50 &
echo "last command pid after sleep: $!"