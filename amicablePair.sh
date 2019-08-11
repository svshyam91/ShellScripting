#! /bin/bash

# Problem: Amicable Pair
# Problem Link: https://practice.geeksforgeeks.org/problems/amicable-pair/0

function amicable_number() {
	a=$1
	b=$2

	num=1
	sum1=0
	while [[ $num -le $((a/2)) ]]; do
		if [[ $((a%num)) -eq 0 ]]; then
			# echo "$num "
			sum1=$((sum1 + num))
		fi
		((num++))
	done

	num=1
	sum2=0
	while [[ $num -le $((b/2)) ]]; do
		if [[ $((b%num)) -eq 0 ]]; then
			sum2=$((sum2 + num))
		fi
		((num++))
	done

	if [[ $sum1 -eq $b && $sum2 -eq $a ]]; then
		echo "1"
	else 
		echo "0"
	fi

}

function main() {
	read -p "Enter the number of test cases: " t
	while [[ $t -gt 0 ]]; do
		read -p "Enter the two numbers: " a b
		ret_value=`amicable_number $a $b`
		echo " $ret_value "
		((t--))
	done
	


}

# Program starts here..
main