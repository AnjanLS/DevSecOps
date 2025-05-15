#!/bin/bash

USERID=$(id -u)    #check the user id 
if [ $USERID -ne 0 ]; then
    echo "Error:: you must have sudo access to privilage the script."
    exit 1    #Failure occurs terminate the script without continuing
fi

R="\e[31m"
G="\e[32m"
Y="\e[33m"

LOGS_FOLDER="/var/logs/shellscript-logs"
LOG_FILE=$(echo $0 | cut -d "." -f1)
TIMESTAMP=$(date +%d-%m-%Y-%H-%M-%S)
LOG_FILE_NAME="$LOGS_FOLDER/$LOG_FILE-$TIMESTAMP.log"

VALIDATE(){
    if [ $1 -ne 0 ]; then 
        echo -e "$2 is $R Failure..." 
        exit 1    #Failure occurs terminate the script without continuing      
    else
        echo -e "$2 is $G Success..."
    fi
}

echo "script started executing at $TIMESTAMP" &>>$LOG_FILE

dnf list installed mysql &>>$LOG_FILE     #To check wheather it is installed/not
if [ $? -ne 0 ]; then        #check previous cmd execute status
    dnf install mysql -y &>>$LOG_FILE     #Installation cmd
    VALIDATE $? "Installing Mysql"
else
    echo -e "Mysql... is already $Y Installed"
fi


dnf list installed mysql-server &>>$LOG_FILE
if [ $? -ne 0 ]; then
    dnf install mysql-server -y &>>$LOG_FILE
    VALIDATE $? "Installing mysql-server"
else
    echo -e "mysql-server... is already $Y Installed"
fi


dnf list installed git  &>>$LOG_FILE      #To check wheather it is installed/not
if [ $? -ne 0 ]; then        #check previous cmd execute status
    dnf install git -y &>>$LOG_FILE      #Installation cmd
    VALIDATE $? "Installing git"
else
    echo -e "Git... is already $Y Installed"
fi

dnf list installed sysstat &>>$LOG_FILE
if [ $? -ne 0 ]; then
    dnf install sysstat -y &>>$LOG_FILE
    VALIDATE $? "Installing sysstat"
else
    echo -e "sysstat... is already $Y Installed"
fi


