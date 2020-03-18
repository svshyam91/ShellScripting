#! /bin/bash

# This script reminds and to brush teeth at night

# Author: @svshyam91
# Date: 16-09-2019

# Exporting environment variables required for crontab to show 
# notification and message box
export DISPLAY=:0.0
export DBUS_SESSION_BUS_ADDRESS=unix:path=/run/user/1000/bus

# ADDITION: 
# 1. Add feature to postpone for remainder if you have not 
# done brush. Like, add buttons for 15mins, 20mins, 30mins to click
# and postpone remainder. Add cronjob automatically
# 2. Add sound for alarm.

function main() {

	# Grab the current date and time
	# hour=$(date "+%H")
	# min=$(date "+M")

	# Take the reponse xmessage 
	$(xmessage "Have you bushed your teeth tonight?" -timeout 10 -buttons yes,no,15mins -geometry 500 -center)

	# Save the exit status of last command 
	status=$(echo $?)

	# Exit status of xmessage having buttons will be 100+button choosen
	# echo $? will be 101 when 1st button is choosen
	# echo $? will be 102 when 2nd button is choosen
	status=$((status - 100))

	# Display the message depending on the status
	if [[ $status ==  1 ]]; then
		$(xmessage "Good SHYAM !!" -timeout 5 -geometry 300 -nearmouse)
	else
		$(xmessage "You should go and brush your teeth now !!" -timeout 5 -geometry 500 -nearmouse)
	fi

}

# Program starts here..
main