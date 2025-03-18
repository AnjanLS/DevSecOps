#!/bin/bash

USERID=$(id -u)
if [ $USERID -ne 0 ]; then
    echo "ERROR:: You must have sudo access to execute the script"
    exit 1
fi

dnf list installed mysql
if [ $? -ne 0 ]; then
    dnf install mysql -y
    echo "Installing Mysql... Success"
else
    echo "Installing Mysql... Failure"
    exit 1
fi

dnf list installed git 
if [ $? -ne 0 ]; then
    dnf install git -y 
    echo "Installing Git... Success"
else
    echo "Installing Git... Failure"
    exit 1
fi