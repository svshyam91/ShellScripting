#!/bin/bash

# Problem: No of divisors in a given range - Geeks For Geeks
# Problem Link: https://practice.geeksforgeeks.org/problems/number-of-divisors-in-a-given-range/0

function no_of_divisors_in_range() {
	m=$1
	n=$2
	a=$3
	b=$4
	count=0
	for (( i = m; i <= n; i++ )); do
		if [[ $((i%a)) -eq 0 || $((i%b)) -eq 0 ]]; then
			((count++))
		fi
	done
	echo "$count"
}

function main() {
	read -p "Enter the number of test cases:" t
	while [[ t -gt 0 ]]; do
		read -p "Enter four numbers: " m n a b
		ans=$(no_of_divisors_in_range $m $n $a $b)
		echo "ans=$ans"
		((t--))
	done
}


# Program starts here
main