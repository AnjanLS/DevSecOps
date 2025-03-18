#!/bin/bash

USERID=$(id -u)
if [ $USERID -ne 0 ]; then
    echo "ERROR:: You need switch to root"
fi

dnf install mysqll -y
dnf install git -y