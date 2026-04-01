#!/bin/bash

# Message on the terminal with the options

echo "-- MAIN MENU --"
echo "1. Display Disck Usage"
echo "2. Display Uptime"
echo "3. Display Logged-in Users"
echo "-------------"
echo "Please enter an option"

# Input on terminal to enter the option
read OPTION

case $OPTION in
	1)
		df -h
		;;
	2)
		uptime
		;;
	3)
		who
		;;
	*)
		echo "Invalid option. Please choose 1, 2 or 3."
		;;

esac

