#! /bin/bash

# 12 Hour Clock Addition - Geeks For Geeks
# Problem Link: https://practice.geeksforgeeks.org/problems/12-hour-clock-addition/0

read -p "Enter the number of test cases: " t

while [[ t -ne 0 ]]; do
	read -p "Enter any two numbers : " num1 num2
	echo $(( (num1+num2)%12 ))
	t=$[t-1]
done