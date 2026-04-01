#!/bin/bash

# Message to enter a number
echo "Enter a number:"

# Input the number on the terminal
read NUM

# Condition to confirm the number is greater than (-gt) 100
if [ $NUM -gt 100 ]; then
	
	echo "That's a big number!"
else
	echo "The number is 100 or less"
fi
