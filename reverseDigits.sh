#! /bin/bash

# Reverse Digits - GeeksForGeeks
# Problem Link: https://practice.geeksforgeeks.org/problems/reverse-digit/0

read -p "Enter the number of test cases: " t

while [[ t -gt 0 ]]; do
	read -p "Enter any number: " num
	num2=0
	while [[ num -ne 0 ]]; do
		rem=$[num%10]
		num2=$[num2*10+rem]
		num=$[num/10]
	done
	printf "The reversed number is %d" "$num2"
	t=$[t-1]
done