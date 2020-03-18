#! /bin/bash

# Exporting Environment variables for sending notification
export DISPLAY=:0.0
export DBUS_SESSION_BUS_ADDRESS=unix:path=/run/user/1000/bus

# Get current hour
hour=$(date +"%H")

# Get current minute
min=$(date +"%M")

if [[ $hour -gt 5 && $hour -lt 12 ]]; then
	mssg="Good Morning!! "
	img="/home/svshyam97/Programming/ShellScripting/sun.png"
elif [[ $hour -gt 12 && $hour -lt 16 ]]; then
	mssg="Good Afternoon!! "
	img="/home/svshyam97/Programming/ShellScripting/sun.png"
elif [[ $hour -ge 16 && $hour -lt 21 ]]; then
	mssg="Good Evening!! "
	img="/home/svshyam97/Programming/ShellScripting/moon.png"
else
	mssg="Good Night!! "
	img="/home/svshyam97/Programming/ShellScripting/moon.png"
fi

# echo "$mssg"
# Sending Notification instead of sending message to the terminal
notify-send -i $(echo $img) "$mssg" "Shyam K."