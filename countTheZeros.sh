#!/bin/bash

# Problem: Count the Zeros
# Problem Link: https://practice.geeksforgeeks.org/problems/count-the-zeros/0

count_the_zeros() {
	arr=$1
	n=$2
	i=0
	count=0
	while [[ ${arr[i]} -ne 0 ]]; do
		((count++))
		((i++))
	done

	# To get the count of 0's
	count=$((n-count))
	echo "$count" 
}
main() {
	read -p "Enter the number of test cases: " t
	while [[ $t -gt 0 ]]; do 
		read -p "Enter the size of the array: " n
		declare -a arr
		for (( i=0; i < n; i++ )); do 
			read arr[i]
		done
		ans=$(count_the_zeros $arr $n)
		echo "$ans"
		((t--))
	done
}

#Program starts here...
main