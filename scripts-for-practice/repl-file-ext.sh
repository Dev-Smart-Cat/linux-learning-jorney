#!/bin/bash

# Loop to iterate over all files in the directory.
# Terminal must be in the directory, so that the loop will work.
# * and nothing next means the files had no extension

for FILENAME in *

do
	# Assign the current file name to a var
	RENAMED_FILE="${FILENAME%}"
	# Show a message with the old name and the new name
	echo "Renaming ${FILENAME} to ${RENAMED_FILE}.sh"
	# Add .sh extension to the files
	mv "${FILENAME}" "${RENAMED_FILE}.sh"

done
