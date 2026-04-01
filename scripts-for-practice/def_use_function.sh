#!/bin/bash

# Define a function called log_message to print a timestamp
log_message() {
	
	# This function perints the timstamp.	
	echo "$(date '+%Y-%m-%d %H:%M:%S') - $1" # $1 positional arguments, refers to the args passed to the function.

}

# Use the function

log_message "Starting the script"
log_message "Performing a task..."

# sleep command allows suspend calling process for a time. 
# Pauses the execution of the next command for a give time.
# In this case is pausing for 5 seconds.
sleep 5

log_message "Task finished."
log_message "Exiting the script."
