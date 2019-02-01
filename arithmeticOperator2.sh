#!/bin/sh

# Program to perform arithmetic operation on user input

read -p "Enter two numbers:" num1 num2

# Addition
ans=$(expr $num1 + $num2)
echo "$num1 + $num2 = $ans"

# Substraction 
ans=$(expr $num1 - $num2)
echo "$num1 - $num2 = $ans"

# Multiplication
ans=$(expr $num1 \* $num2)
echo "$num1 * $num2 = $ans"

# Division
ans=$(expr $num1 / $num2)
echo "$num1 / $num2 = $ans"

# Modulus
ans=$(expr $num1 % $num2)
echo "$num1 % $num2 = $ans"