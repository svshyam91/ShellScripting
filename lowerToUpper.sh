#! /bin/bash

# Lower case to Upper case - Geeks For Geeks
# Problem Link: https://practice.geeksforgeeks.org/problems/lower-case-to-upper-case/0/

read -p "Enter the number of test cases: " t
while [[ t -ne 0 ]]; do
	read -p "Enter any string: " str

	# declare is used to declare variable of particular type
	# -i for integer, -l for lowercase, -u for uppercase etc. 
	# For more info: help declare
	declare -u str=$str
	echo "$str"
	t=$[t-1]
done