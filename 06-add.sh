#!/bin/bash

echo "adding two numbers"
read s1
echo "first number is:$s1"
read s2
echo "second number is:$s2"

sum=$((s1+s2))
echo "total sum is $sum"