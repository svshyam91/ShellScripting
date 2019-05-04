#! /bin/bash

# The dice problem - GeeksForGeeks
# Problem Link: https://practice.geeksforgeeks.org/problems/the-dice-problem/0

read -p "Enter any side of 6 face dice: " f

echo "The opposite face of dice will be "$[7-f]