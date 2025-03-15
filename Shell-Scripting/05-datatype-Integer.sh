#!/bin/bash

# Printing addition of 2 number
number1=$1
number2=$2
TIMESTAMP=$(date)
echo "script executed at: $TIMESTAMP"
sum=$(($number1+$number2))
echo "sum of $number1 and $number2 is: $sum"