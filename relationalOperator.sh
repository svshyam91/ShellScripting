#!/bin/bash

# Program to show relational operators

read -p "Enter two numbers: " num1 num2

# Equal to Operator

if [ $num1 -eq $num2 ]
then
	echo "$num1 is greater than $num2."
else 
	echo "$num2 is greater than $num1."
fi

# Not Equal to Operator

if [ $num1 -ne $num2 ]
then
	echo "$num1 is not equal to $num2."
else
	echo "$num1 is equal to $num2."
fi

# Greater than Operator

if [ $num1 -gt $num2 ]; then
	echo "$num1 is greater than $num2."
else
	echo "$num2 is greater than $num1."
fi

# Less than Operator

if [[ $num1 -lt $num2 ]]; then
	echo "$num1 is less than $num2.";
else
	echo "$num2 is less than $num1.";
fi

# Greater than or equal to Operator

if [[ $num1 -ge $num2 ]]; then
	echo "$num1 is greater or equal to $num2.";
else
	echo "$num1 is not greater than or equal to $num2";
fi

# Less than or equal to Operator

if [[ $num1 -le $num2 ]]; then
	echo "$num1 is less than or equal to $num2.";
else
	echo "$num1 is not less than or equal to $num2.";
fi

