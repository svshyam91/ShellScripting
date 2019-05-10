#! /bin/bash

# Conditional Operator - Hacker Rank
# Problem Link: https://www.hackerrank.com
# /challenges/bash-tutorials---more-on-conditionals/problem

read X
read Y
read Z

if [[ $X -eq $Y && $Y -eq $Z && $Z -eq $X ]]; then
    echo "EQUILATERAL"
elif [[ $X -ne $Y && $Y -ne $Z && $Z -ne $X ]]; then
    echo "SCALENE"
else 
    echo "ISOSCELES"
fi