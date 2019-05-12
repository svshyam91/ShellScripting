#! /bin/bash

# Problem: Program to find total number of Rectangles in a N*N chessboard

main() {
	read -p "Enter the number of test case: " t
	while [[ $t -gt 0 ]]; do
		read -p "Enter the value of N: " N

		# Total rectangles in N*N chessboard is equal to 
		# (N+1)C2*(N+1)C2 which is equivalent to square(N*(N+1)/2)
		temp=$(( (N*(N+1))/2 ))
		totalRect=$(( temp*temp ))

		echo "Total Rectangles in $N*$N chessboard: $totalRect" 
		(( t-- ))
	done
}

# program starts here. Calling main()...
main