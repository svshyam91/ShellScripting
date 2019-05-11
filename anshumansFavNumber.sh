#! /bin/bash

# Problem: Anshuman's Favourite Number
# Problem Link: https://practice.geeksforgeeks.org/problems/anshumans-favourite-number/0

function anshumans_fav_number() {
	num=$1
	if [[ $[num%5] -eq 0 ]]; then
		echo "YES"
	else
		echo "NO"
	fi
}

function main() {
	read -p "Enter the number of test cases: " t
	while [[ $t -gt 0 ]]; do
		read -p "Enter any number: " num
		ret_val=`anshumans_fav_number $num`
		echo "Return Value: $ret_val"
		(( t-- ))
	done
}

# Program Starts here
main