#!/bin/bash

# Name the new file
INPUT_FILE="servers.txt"

# Insert text to servers file
echo "server1.example.com" > "$INPUT_FILE"
echo "server2.example.com" >> "$INPUT_FILE"
echo "server3.example.com" >> "$INPUT_FILE"
echo "Reading servers from $INPUT_FILE..."

# Read the file line by line in Bash, 
# where option -r prevents backslash escapes (\) from being interpreted and
# IFS (Internal Field Separator) guarantees whitespaces at the beginning 
# and at the end are the discarted:

# while IFS= read -r LINE => standard and safe way to read a file line by line 

while IFS= read -r LINE

do
	echo "Processing server: $LINE"

done < "$INPUT_FILE"
