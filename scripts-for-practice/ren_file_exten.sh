#!/bin/bash

# This script renames all .txt files in the current directory to .log file.

# *: matches all files ending with .txt
for FILENAME in *.txt

do
	# ${FILENAME%.txt}: pattern extention to get file name WITHOUT extention
	# ${}: allow the string to be manipulated.
	BASE_NAME="${FILENAME%.txt}"


	# [[]]: used for pattern matching
	# file*: matching pattern to match filenames beginning with file
	if [[ "$FILENAME" == file* ]]; then
		
		# ${}: allow the string to be manipulated and 
		# to add .log extention.
		echo "Renaming $FILENAME to ${BASE_NAME}.log"

		# Rename the file1, 2, 3 from txt to .log
		mv "$FILENAME" "${BASE_NAME}.log"

	else
		break

	fi

done
