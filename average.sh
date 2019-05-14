#!/bin/bash

declare -a arr
read -p "Enter the size of the array: " size
for (( i = 0; i < size; i++ )); do
	read arr[i]
done
sum=0
for (( i = 0; i < size; i++ )); do
	sum=$(( sum+arr[i] ))
done
ans=`echo "scale=4; $sum/$size" | bc`
printf "%.03f" "$ans"