#! /bin/bash

# This script changes the color of the text and background

# Making the text color as red

# Flag -e means echo accepts escape sequences
# Flag -n means omit newline 
echo -e -n "\e[;31m This is red text \e[0m"; 

# Making the background color of text as yellow
echo -e "\e[;42m \e[;31m Yellow Background \e[0m";