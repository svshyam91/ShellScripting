#! /bin/bash

# Problem: Doctor's Clininc
# Problem Link: https://practice.geeksforgeeks.org/problems/doctors-clinic/0

doctors_clinic()
{
	N=$1
	X=$2
	entry_time=$[X*(N-1)]
	exit_time=$[N*10]
	waiting_time=$[exit_time-entry_time-10]
	echo "Waiting Time: $waiting_time"
}

read -p "Enter the number of test cases: " t

while [[ t -gt 0 ]]; do
	read -p "Enter value of N ans X: " N X
	doctors_clinic $N $X
	(( t-- ))
done