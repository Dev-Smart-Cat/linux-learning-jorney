#!/bin/bash

# This script uses curl to check if a website is responding by looking for a 200 OK HTTP status code.
# curl: (client for URLs) a tool to transfer data from or to a server, using one of the supported
# protocols HTTP, HTTPS, FTP, etc.

SITE_URL="https://elementor.com"

# -write-out %{http_code}: tells curl to print only the HTTP status code to standard output.
# -silent: prevents curl from showing progress meters.
# /dev/null: called blackhole because any data written to /dev/null vanishes or disappers.
# -output /dev/null: redirects the actual page content to /dev/null so it is not displayed in the terminal.
 
STATUS_CODE=$(curl --write-out %{http_code} --silent --output /dev/null "$SITE_URL")

if [ "$STATUS_CODE" -eq 200 ]; then
	
	echo "Site $SITE_URL is UP and running. (Status Code: $STATUS_CODE)"

else
	echo "Site $SITE_URL seems to be DOWN. (Status Code: $STATUS_CODE)"

fi
