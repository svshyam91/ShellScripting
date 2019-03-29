#!/bin/bash

# Program to implement Boolean Operator

read -p "Enter two numbers: " num1 num2

# Logical negation operator
if [[ !num1 ]]; then
	echo "num1 is true but changed to false.";
else
	echo "num1 is false but changed to true.";
fi

# Logical OR Operator
if [[ ($num1 -gt $num2) || ($num2 -gt -$num2) ]]; then
	echo "Either $num1 > $num2 or $num2 > $num1.";
else
	echo "$num1 is equal to $num2.";
fi

# Logical AND Operator
if [[ ($num1 > 10) -a ($num1 > $num2) ]]; then
	echo "$num1 is greater than 10 and $num1 is greater than $num2.";
else
	echo "Either $num1 is less than 10 or $num1 is less than $num2.";
fi


