#!/bin/bash

# When working with multiple git repos,
# this script pull the latest changes for all of them at once.

# Create an array with the paths to all dirs.

REPO_DIRS=(
	"/path/to/first/repo"
)

# Iterates over all elements in the REPO_DIRS array
for DIR in "${REPO_DIRS[@]}"

do	# -d "$DIR": -d followed by dir name checks if the dir exists
	if [ -d "$DIR" ]; then
		
		echo "-- Updating repository in $DIR --"
		# Change to the given dir
		cd "$DIR"
		# git command to fetches the latest changes from the remote dir.
		git pull
		echo "--------------------------------"

	else	
		# Warning message followed by the DIR 
		echo "WARNING: Directory does not exist: $DIR"
	fi
done
