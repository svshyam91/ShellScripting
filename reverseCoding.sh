#!/bin/bash

# Problem: Reverse Coding - Geeks For Geeks
# Problem Link: https://practice.geeksforgeeks.org/problems/reverse-coding/0

reverse_coding() {
	n=$1
	if [[ $n -eq 0 ]]; then
		echo "0" 
	else
		echo "$((n+$(reverse_coding $n-1)))"
	fi
}

main() {
	read -p "Enter the number of test cases: " t
	while [[ t -gt 0 ]]; do
		read -p "Enter the value of n and m:" n m
		ans=$(reverse_coding $n)
		if [[ $ans -eq m ]]; then
			echo "1"
		else
			echo "0"
		fi
		((t--))
	done
}

# Program starts here...
main