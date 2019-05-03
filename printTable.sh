#! /bin/bash

# Program to print the table of user defined number

# Taking input from user
read -p "Enter any number: " number

for (( i = 1; i <= 10; i++ )); do
	echo "$number * $i = "$[number*i]
done

