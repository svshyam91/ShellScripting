#! /bin/bash

# Get current hour
hour=$(date +"%H")

# Get current minute
min=$(date +"%M")

if [[ $hour -gt 5 && $hour -lt 12 ]]; then
	mssg="Good Morning!! Shyam.."
elif [[ $hour -gt 12 && $hour -lt 16 ]]; then
	mssg="Good Afternoon!! Shyam.."
elif [[ $hour -ge 16 && $hour -lt 21 ]]; then
	mssg="Good Evening!! Shyam.."
else
	mssg="Good Night!! Shyam.."
fi

# Sending Notification instead of sending message to the terminal
notify-send "Hello !" "$mssg"