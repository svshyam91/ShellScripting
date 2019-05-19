#!/bin/bash

# This script sends mails automatically using mutt command

read -p "Enter recepient mail address: " email
read -p "Enter subject for Email: " sub
read -p "Enter content for Email: " cont

# Mutt command for sending mail
echo "$cont" | mutt -s "$sub" $email

if [[ $? -eq 0 ]]; then
	echo "Mail sent successfully."
else
	echo "Something went wrong..."
fi
