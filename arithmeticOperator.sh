#! /bin/sh

# Program to show the arithmetic operators

a=10
b=20

# Addition
ans=$((a + b))
echo "Sum of $a and $b is $ans"

# Substraction 
ans=$((a - b))
echo "substraction of $a and $b is $ans"

# Multiplication
ans=$((a * b))
echo "Multiplication of $a and $b is $ans"

# Division
ans=$((a / b))
echo "Division of $a and $b is $ans"

# Modulus
ans=$((a % b))
echo "Modulus of $a and $b is $ans"