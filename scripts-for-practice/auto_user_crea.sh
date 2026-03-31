#!/bin/bash

# This script must be run as root.

# if [ "$(id -u)" -ne 0 ]: checks if the current user's ID is not 0. 
# The root user always has a UID of 0. This ensures the script has the necessary permissions.
# id -u: check the user id (change to the user first to confirm the id)

if [ "$(id -u)" -ne 0 ]; then

	echo "This script must be run as root. Aborting."
	# exit 1: exists the script with a non-zero status code, indicating an error occurred.
	exit 1
fi

echo "Enter username for the new account:"

read NEW_USER

# Check if the user already exists

# id "$NEW_USER" &>/DEV/NULL: this command checks if the user exists. 
# &>/dev/null: redirects both standard output and standard error to /dev/null, so we do not use any output frm this command. 
# We only care about its exist status.
# /dev is a directory and null is one of its files

if id "$NEW_USER" &>/dev/null; then

	echo "User '$NEW_USER' already exists. Aborting."
	

	exit 1
fi

# useradd -m -s /bin/bash "$NEW_USER": the command to add a user.
	# -m: creates a home directory for the user.
	# -s /bin/bash: sets the user's default shell to Bash.

useradd -m -s /bin/bash "$NEW_USER"

# $?: this special variable holds the exit status of the last command executed.
# A status of 0 means success.

if [ $? -eq 0 ]; then

	echo "User '$NEW_USER' created successfully."
	echo "Please set a password for the new user:"

	# passwd "$NEW_USER": prompts to set the password for the new user. 
	passwd "$NEW_USER"
else
	echo "Error creating user '$NEW_USER.'"
	exit 1
fi'
