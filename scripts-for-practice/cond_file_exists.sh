#!/bin/bash

# Print a message asking to enter the file
echo "Enter a file name:"

# Input on the terminal the file name
read FILE_NAME

# Create the file path
FILE_PATH="/home/weverson_barbieri/myscripts/$FILE_NAME"

# Condition to confirm the file path exists
if [ -f "$FILE_PATH" ]; then
	
	echo "File exists: $FILE_PATH"
else
	echo "File does not exist: $FILE_PATH"
fi
