#!/bin/bash

# Program to print date, time and month according to 
# user preference



# while [[ : ]]; do
# 	d=$(date +"%M")
# 	if [[ $d == "33" ]]; then
# 		execute 
# 	fi
# 	exit
# done



execute() {
	echo "Program to get Customized Date and Time.."
	while [[ true ]]; do
		echo "1. Get Date" 
		echo "2. Get Time"
		echo "3. Get Year"
		echo "4. Exit"
		echo "Choose the appropriate option: "; read op
		case $op in
			1)
			date +"%D"
				;;
			2)
			date +"%X"
				;;
			3)
			date +"%Y"
				;;
			4)
			exit
				;;
		esac
	done

}


execute