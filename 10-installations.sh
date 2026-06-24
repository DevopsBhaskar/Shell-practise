#!/bin/bash

USER_ID=$(id -u)

if [ $USER_ID -ne 0 ]; then
    echo "ERROR: Please run with sudo previliages"
    exit 1
fi

dnf install mysql -y

if [ $? -eq 0 ]; then
    echo "MYSQL is installed"
    exit 1
else
    echo "SOMETHING is issue with MYSQLD"
fi