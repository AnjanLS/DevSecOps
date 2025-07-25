#!/bin/bash

USERID=$(id -u)    #check the user id 
if [ $USERID -ne 0 ]; then
    echo "Error:: you must have sudo access to privilage the script."
    exit 1    #Failure occurs terminate the script without continuing
fi

R="\e[31m"
G="\e[32m"
Y="\e[33m"

VALIDATE(){
    if [ $1 -ne 0 ]; then 
        echo -e "$2 is $R Failure..." 
        exit 1    #Failure occurs terminate the script without continuing      
    else
        echo -e "$2 is $G Success..."
    fi
}

dnf list installed mysql     #To check wheather it is installed/not
if [ $? -ne 0 ]; then        #check previous cmd execute status
    dnf install mysql -y      #Installation cmd
    VALIDATE $? "Installing Mysql"
else
    echo -e "Mysql... is already $Y Installed"
fi


dnf list installed mysql-server
if [ $? -ne 0 ]; then
    dnf install mysql-server -y
    VALIDATE $? "Installing mysql-server"
else
    echo -e "mysql-server... is already $Y Installed"
fi


dnf list installed git       #To check wheather it is installed/not
if [ $? -ne 0 ]; then        #check previous cmd execute status
    dnf install git -y      #Installation cmd
    VALIDATE $? "Installing git"
else
    echo -e "Git... is already $Y Installed"
fi

dnf list installed sysstat
if [ $? -ne 0 ]; then
    dnf install sysstat -y
    VALIDATE $? "Installing sysstat"
else
    echo -e "sysstat... is already $Y Installed"
fi


