#!/bin/bash

# This script sends mails automatically using mutt command
# To change the sender's mail address; Make changes in file ~/.muttrc

read -p "Enter recepient mail address: " email
read -p "Enter subject for Email: " sub
read -p "Enter content for Email: " cont
read -p "Want to attach file (y/n) ?" op
path=""
if [[ $op == "y" ]]; then
	read -p "Enter the path of the file: " path
	# Mutt command for sending mail

	echo "$cont" | mutt -s "$sub" $email -a $path
else
	# Mutt command for sending mail

	echo "$cont" | mutt -s "$sub" $email
fi

if [[ $? -eq 0 ]]; then
	echo "Mail sent successfully."
else
	echo "Something went wrong..."
	return 1
fi