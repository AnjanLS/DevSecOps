#!/bin/bash

USERID=$(id -u)    #check the user id 

R="\e[31m"
G="\e[32m"
Y="\e[33m"
N="\e[0m"

LOGS_FOLDER="/var/log/shellscript-logs"
LOG_FILE=$(echo $0 | cut -d "." -f1)
TIMESTAMP=$(date +%d-%m-%Y-%H-%M-%S)
LOG_FILE_NAME="$LOGS_FOLDER/$LOG_FILE-$TIMESTAMP.log"

VALIDATE(){
    if [ $1 -ne 0 ]; then 
        echo -e "$2 is $R Failure... $N" 
        exit 1    #Failure occurs terminate the script without continuing      
    else
        echo -e "$2 is $G Success... $N"
    fi
}

echo "script started executing at: $TIMESTAMP" &>>$LOG_FILE_NAME

if [ $USERID -ne 0 ]; then
    echo "Error:: you must have sudo access to privilage the script."
    exit 1    #Failure occurs terminate the script without continuing
fi

for package in $@
do
    dnf list installed $package &>>$LOG_FILE_NAME
    if [ $? -ne 0 ] 
    then
        dnf install $package -y &>>$LOG_FILE_NAME
        VALIDATE $? "Installing $package"
    else
        echo -e " $package is already $Y installed... $N"
    fi
done

