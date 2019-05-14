#!/bin/bash

# Problem: Perfect Numbers - Geeks For Geeks
# Problem Link: https://practice.geeksforgeeks.org/problems/perfect-numbers/0

get_factors() {
	N=$1
	k=1
	sum=0
	while [[ $(( N/2 )) -ge $k ]]; do
		if [[ $(( N%k )) -eq 0 ]]; then
			sum=$(( sum+k ))
		fi
		(( k++ ))
	done
	if [[ $sum -eq $N ]]; then
		echo "1"
	else
		echo "0"
	fi
}

main() {
	read -p "Enter the number of test cases: " t
	while [[ $t -gt 0 ]]; do
		read -p "Enter any numbers N: " N

		# $() is preferred over ``
		ans=$(get_factors $N)
		echo "$ans"

		(( t-- ))
	done
}

# Program Execution starts here. Calling main()...
main

# Exit the program 
exit