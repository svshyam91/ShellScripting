function deficientNumber() {
	N=$1
	sum=0
	temp=1
	while [[ $temp -le $((N/2)) ]]; do 
		if [[ $(( N%temp )) -eq 0 ]]; then
			echo -n "Temp: $temp"
			sum=$(( sum+temp ))
		fi
		((temp++))
	done
	sum=$(( sum+N ))
	echo "sum=$sum"
	if [[ $sum -lt $((N*2)) ]]; then
		echo "YES"
	else
		echo "NO"
	fi
}

function main() {
	read -p "Enter the number of test cases: " t
	while [[ t -gt 0 ]]; do
		read -p "Enter any number: " N
		ans=$(deficientNumber $N)
		echo "$ans"
		((t--))
	done
}

# Program starts here..
main