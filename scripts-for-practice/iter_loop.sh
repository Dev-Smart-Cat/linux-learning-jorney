#!/bin/bash

# Loop over a list of website names

for SITE in "elementor.com""google.com""wordpress.com"
	
do
	echo "Pinding $SITE..."
	ping -c 1 $SITE
done
echo "Loop finished."


