#!/bin/bash

USERID=$(id -u)
if [ $USERID -ne 0 ]; then
    echo "ERROR:: You must have sudo access to execute the script"
    exit 1
fi

dnf install mysql -y

if [ $? -ne 0 ]; then
    echo "Installing Mysql... Failure"
    exit 1
else
    echo "Installing Mysql... Success"
fi

dnf install git -y 

if [ $? -ne 0 ]; then
    echo "Installing Git... Failure"
    exit 1
else
    echo "Installing Git... Success"
fi