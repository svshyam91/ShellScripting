#! /bin/bash

# Problem: Sum of Series - GeeksForGeeks(Basic)
# Problem Link: https://practice.geeksforgeeks.org/problems/sum-of-series/0

read -p "Enter the number of test Cases: " t

while [[ $t -gt 0 ]]; do
	read -p "Enter the value of N: " n
	sum=$(( n *(n+1)/2 ))
	echo "Sum: $sum"
	t=$[t-1]
done

