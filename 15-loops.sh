#!/bin/bash

for i in {1..20}
do 
    echo "$i"
    if [ $i -eq 15 ]; then
        echo "$i reached to 15 so exiting"
        exit 1
    fi
done