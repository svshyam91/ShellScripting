#! /bin/bash

# Get current hour
hour=$(date +"%H")

# Get current minute
min=$(date +"%M")

if [[ $hour -gt 5 && $hour -lt 12 ]]; then
	mssg="Good Morning!! Shyam.."
	img="/home/svshyam97/Programming/ShellScripting/sun.png"
elif [[ $hour -gt 12 && $hour -lt 16 ]]; then
	mssg="Good Afternoon!! Shyam.."
	img="/home/svshyam97/Programming/ShellScripting/sun.png"
elif [[ $hour -ge 16 && $hour -lt 21 ]]; then
	mssg="Good Evening!! Shyam.."
	img="/home/svshyam97/Programming/ShellScripting/moon.png"
else
	mssg="Good Night!! Shyam.."
fi

# echo "$mssg"
# Sending Notification instead of sending message to the terminal
notify-send -i $(echo $img) "Hello !" "$mssg"