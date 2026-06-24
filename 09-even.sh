#!/bin/bash

NUM=10

if [ $(($NUM% 2)) -eq 0 ]; then
    echo "$NUM is even number"
else
    echo "$NUM is odd number"
fi