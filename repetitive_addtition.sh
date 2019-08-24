#!/bin/bash

# Problem: Repetitive Addition - Geeks For Geeks
# Problem Link: https://practice.geeksforgeeks.org/problems/repetitive-addition-of-digits/0
read -p "Enter any number:" num
sum=11		# Just a random number to make the following condition true
while [[ $((sum/10)) -ne 0 ]]; do
	sum=0
	while [[ $num -ne 0 ]]; do
		rem=$[num%10]
		sum=$[sum+rem]
		num=$[num/10]
	done
	num=$sum
done
echo "$sum"