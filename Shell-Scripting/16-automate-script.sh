#!/bin/bash

USERID=$(id -u)    #check the user id 
if [ $USERID -ne 0 ]; then
    echo "Error:: you must have sudo access to privilage the script."
    exit 1    #Failure occurs terminate the script without continuing
fi

#My method
dnf list installed mysql     #To check wheather it is installed/not
if [ $? -ne 0 ]; then        #check previous cmd execute status
    if [ $USERID -ne 0 ]; then
        dnf install mysql -y      #Installation cmd
        echo "Successfully Installed Mysql.."
    else
        echo "Mysql.. Installation Failure"
        exit 1    #Failure occurs terminate the script without continuing
    fi
else
    echo "Mysql... is already Installed"
fi

#daws method
dnf list installed git       #To check wheather it is installed/not
if [ $? -ne 0 ]; then        #check previous cmd execute status
    dnf install git -y      #Installation cmd
    if [ $? -ne 0 ]; then 
        echo "Git.. Installation Failure" 
        exit 1    #Failure occurs terminate the script without continuing      
    else
        echo "Successfully Installed Git.."
    fi
else
    echo "Git... is already Installed"
fi