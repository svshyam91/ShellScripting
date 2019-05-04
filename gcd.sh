#! /bin/bash

# Program to print the gcd of two numbers
# Program not complete

read -p "Enter two numbers: " num1 num2
x=$num1
y=$num2

while [[ $num1 -ne $num2 ]]; do
	if [[ $num1 -gt $num2 ]]; then
		num1=$[num1-num2]
	else
		num2=$[num2-num1]
	fi
done

echo "The GCD of $x and $y is "$num1