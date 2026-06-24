#!/bin/bash

USER_ID=$(id -u)

if [ $USER_ID -ne 0 ]; then
    echo "ERROR: Please run with sudo previliages"
    exit 1
fi

validate(){
    if [ $1 -eq 0 ]; then
        echo "$2 is installed"
        exit 1
    else
        echo "SOMETHING is issue with $2"
    fi
}

dnf install mysql -y
validate $? "mysql"

dnf install nginx -y
validate $? "nginx"

dnf install python3 -y
validate $? "python"

