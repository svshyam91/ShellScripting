#! /bin/bash

# This script is to check whether internet is working or not
function check_internet() {

	# -q - silent mode
	# --spider - don't get, just check page availability
	# $? - Shell return code

	wget -q --spider http://google.com
	if [[ $? -eq 0 ]]; then
		echo "Internet is working."
	else
		echo "Internet is not working."
		exit 1		# To exit the script
	fi
}

check_internet