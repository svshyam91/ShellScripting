#! /bin/bash

# This script checks internet connection(15 times with wait of 5 seconds)
#+ and sends email that you have started the system.

# Exporting Environment variables for sending notification
export DISPLAY=:0.0
export DBUS_SESSION_BUS_ADDRESS=unix:path=/run/user/1000/bus


function check_internet() {
	status=0
	no_of_time_tried = 0
	while [[ $status -eq 0 && $no_of_time_tried -lt 15 ]]; do

		#Sleep for 60 seconds
		sleep 60s

		# Check internet connection 
		wget -q --spider http://google.com
		
		if [[ $? -eq 0 ]]; then
			notify-send "Internet Connection" "CONNECTED!!"
			status=1			
		fi

		((no_of_time_tried++))

	done
}

function main() {

	# Content to send to email
	boot_time=$(who -b)
	mssg=$(echo "Your system BodhiLinux/svshyam97 has been started on $boot_time")

	# Check internet connection
	check_internet

	# Sending email
	echo $mssg | mutt -s "Linux System: STARTED" "svshyam97@gmail.com"

	# Checking the return value of email command
	if [[ $? ]]; then
		notify-send "Sending mail.." "Mail sent successfully"
	else
		notify-send "Mail Status" "Problem sending the mail"
	fi
}

# Program starts here...
main