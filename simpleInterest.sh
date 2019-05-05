#! /bin/bash

# Problem: Simple Interest - Geeks For Geeks
# Problem Link: https://practice.geeksforgeeks.org/problems/simple-interest/0

read -p "Enter the number of test cases: " t
while [[ t -gt 0 ]]; do

	read -p "Enter the value of P T R: " P T R

	# Here, bc is used for decimal calculation and quotes(`) are used
	# so that the line inside `` will be treated as command

	R=`echo "scale=2; $R/100" | bc`

	si=`echo "scale=2; $P*$R*$T" | bc`
	printf "%.0f\n" "$si"

	t=$[t-1]
done