#! /bin/bash

# Program: Write a program to print "YES" if the string entered
# 			by the user is "Ram" or "Shyam" and print "NO" if not.

read -p "Enter any string: " str

if [[ "$str" = "Shyam" || "$str" = "Ram" ]]; then
	echo "YES"
else
	echo "NO"
fi