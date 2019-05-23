#!/bin/bash

# Problem: Rotate Array
# Problem Link: https://practice.geeksforgeeks.org/problems/rotate-array-by-n-elements/0


read -p "Enter the number of test cases:" t
while [[ $t -gt 0 ]]; do 

	declare -a arr
	read -p "Enter the size of array and value of d: " n d
	# read -p "enter array: " array
	for (( i = 0; i < n; i++ )); do
		read arr[i]
	done
	
	# Rotating the array clockwise
	size=${#arr[*]}
	for (( i = 0; i < d; i++ )); do
		temp=${arr[0]}
		for (( j = 1; j < size; j++ )); do
			arr[j-1]=${arr[j]}
			# echo "Array: ${arr[*]}"
		done
		arr[size-1]=$temp
	done


	echo "N=$n and d=$d"
	echo "Array: ${arr[*]}"
	(( t-- ))

done
