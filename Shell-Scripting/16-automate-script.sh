#!/bin/bash

USERID=$(id -u)
if [ $USERID -ne 0 ]; then
    echo "Error:: you don't have root previlage to Install the apps"
fi

dnf list installed mysql
if [ $? -ne 0 ]; then
    if [ $USERID -ne 0 ]; then
        dnf install mysql -y
        echo "Successfully Installed Mysql.."
    else
        echo "Mysql.. Installation Failure"
    fi
else
    echo "Mysql... is already Installed"
fi

