#! /bin/bash

# Program to find the lcm of two numbers

read -p "Enter two numbers: " num1 num2

x=$num1
y=$num2

while [[ $num1 -ne $num2 ]]; do
	if [[ $num1 -lt $num2 ]]; then
		num1=$[num1+x]
	else
		num2=$[num2+y]
	fi
done

echo "The LCM of $x and $y is "$num1