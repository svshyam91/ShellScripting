#! /bin/bash

# Problem: Squares in N*N Chessboard
# Problem Link: https://practice.geeksforgeeks.org/problems/squares-in-nn-chessboard/0

main() {
	read -p "Enter the number of test cases: " t
	while [[ $t -gt 0 ]]; do
		read -p "Enter the value of N: " N

		# Formula for finding total number of squares
		totalSquares=$(( (N*(N+1)*(2*N+1))/6 ))

		echo "Total Squares: $totalSquares"
		(( t-- ))
	done

}

# Program starts here. Calling main()...
main