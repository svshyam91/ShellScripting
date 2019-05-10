#! /bin/bash

# Automorphic Square - Geeks For Geeks
# Problem Link: https://practice.geeksforgeeks.org/problems/automorphic-number/0

# reverse_number()
# {
# 	n=$1
# 	while [[ $n -ne 0 ]]; do
# 		rem=$[n%10]
# 		rev=$[rev*10+rem]
# 		n=$[n/10]
# 	done

# 	echo "$rev"
# } 

read -p "Enter the number of test cases: " t

while [[ t -ne 0 ]]; do

	read -p "Enter any number: " num
	sq=$[num*num]

	lenNum=${#num}
	lenSq=${#sq}

	temp=$(( lenSq-lenNum))

	# This is used to copy substring from string ${string: start: length}
	subSq=${sq:temp:lenNum}

	if [[ num -eq subSq ]]; then
		echo "Automorphic Number"
	else
		echo "Not Automorphic Number"
	fi

	# Reverse number and Square of number
	# revNum=$( reverse_number $num )
	# revSq=$( reverse_number $sq )

	t=$[t-1]

done

