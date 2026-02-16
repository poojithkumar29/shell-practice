#!/bin/bash

echo "Enter the number"
read number

if [ $(($number%2)) -eq 0 ]; then
    echo "The number is EVEN"
else 
    echo "the number is ODD"
fi