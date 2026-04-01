#!/bin/bash

THRESHOLD=90

# df /: shows the disck usage for the root filesystem (/).
# grep /: filters the output to get the line for the root partition.
# awk '{ print $5 }': prints the 5th column of the line, which is the percentage used.
# sed 's/%//g': removes the % sybol from the output so we have a clean number for comparison.
# ${CURRENT_USAGE}: this is an alternative way to reference a variable, often used to avoid ambiguity.

CURRENT_USAGE=$(df / | grep / | awk '{ print $5 }' | sed 's/%//g')

if [ "$CURRENT_USAGE" -gt "$THRESHOLD" ]; then
	
	echo "WARNING: Root partition disck space is critically low!"

	echo "Current usage is at ${CURRENT_USAGE}%."
	
	# Example of sending an email alert (requires mail server setup)

	# mail -s 'Disk Space Alert' your-mail@example.com < "Root partition usage is at ${CURRENT_USAGE}%"
fi

