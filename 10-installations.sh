#!/bin/bash

USER_ID=$(id -u)

if [ $USER_ID -ne 0 ]; then
    echo "ERROR: Please run with sudo previliages"
fi

dnf install mysqld -y

if [ $? -eq 0 ]; then
    echo "MYSQL is installed"
else
    echo "SOMETHING is issue with MYSQLD"
fi