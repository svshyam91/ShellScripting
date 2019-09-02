function main() {
	read -p "Enter the number of test cases: " t
	while [[ $t -gt 0 ]]; do 
		read -p "Enter the number of strings: " n
		read -p "Enter the strings: " str
		declare -a string_arr
		i=0
		for s in $str; do
			string_arr[i]=$s
			((i++))
		done

		# Here, ${string_arr[*] - Printing the string array
		#		tr [OPTION] SET1 [SET2] - Used to replace space with '\n'
		#		tr command is used two times, one before sorting and 
		#		other after sorting('\n' with ' ')
		#		sort- this command is used to sort the string, it only works
		#		when '\n' is the word seperator
		echo "${string_arr[*]}" | tr ' ' '\n' | sort | tr '\n' ' '
		
		((t--))
	done
}

# Program starts here...
main