#!/bin/bash

USERID=$(id -u)    #check the user id 
if [ $USERID -ne 0 ]; then
    echo "Error:: you must have sudo access to privilage the script."
    exit 1    #Failure occurs terminate the script without continuing
fi

VALIDATE(){
    if [ $1 -ne 0 ]; then 
        echo "$2 is Failure..." 
        exit 1    #Failure occurs terminate the script without continuing      
    else
        echo "$2 is Success..."
    fi
}

dnf list installed mysql     #To check wheather it is installed/not
if [ $? -ne 0 ]; then        #check previous cmd execute status
    dnf install mysql -y      #Installation cmd
    VALIDATE $? "Installing Mysql"
else
    echo "Mysql... is already Installed"
fi


dnf list installed git       #To check wheather it is installed/not
if [ $? -ne 0 ]; then        #check previous cmd execute status
    dnf install git -y      #Installation cmd
    VALIDATE $? "Installing git"
else
    echo "Git... is already Installed"
fi