# INCOMPLETE

#! /bin/bash


# Problem: Triangular Number
# Problem Link: https://practice.geeksforgeeks.org/problems/triangular-number/0
# Date: 19-11-2019
# Author: Shyam K (@svshyam91)

triangularNumber() {
	num=$1
	temp=1
	sum=1
	while [[ sum -le num ]]; do
		if [[ sum -eq num ]]; then
			echo "True"
			return
		fi
		((temp++))
		sum=$((sum+temp))
	done
	echo "False"
}

read -p "Enter the number of test cases:" t

while [[ t -gt 0 ]]; do
	read -p "Enter number: " num
	triangularNumber $num
	((t--))
done
