#!/bin/bash

# Checks if the first argument is empty (-z).

if [ -z "$1" ]; then

	echo "Usage: ./timer <seconds>"
	exit 1
fi

SECONDS_LEFT=$1

# The loop continues as long as there is time left.

while [ $SECONDS_LEFT -gt 0 ]; do

	# -n: do not output the trailing newline.
	# -e: enable interpretation of backslach escapes.
	# \r: this is a carriage return. It moves the cursor back to beginning of the line
	# without moving down.
	# \033[0K: this is an ANSI escape code that clears the line from the cursor to the end.

	echo -ne "Time remaining: $SECONDS_LEFT\033[0K\r"
	
	#sleep 1: pauses the script for one second.

	sleep 1
	
	# Decrements the counter

	SECONDS_LEFT=$((SECONDS-LEFT - 1))
done

echo "Times's up!"
