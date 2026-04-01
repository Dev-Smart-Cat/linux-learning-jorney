#!/bin/bash

# Declare an array named QUOTES

QUOTES=(
	"The only way to do great work is to love what you do. - Steve Jobs"
	"Innovation distingueshes between... - Jobs"
	"Stay hungry, stay fooflish. - Jobs"
	"Your time is limited... - Jobs"
)

# Get the number of elements in the array

NUM_QUOTES=${#QUOTES[@]}

# Generate a random index
# $((...)): syntax for arithmetic expansion.
# $RANDOM: Special shell variable that returns a different random integer each time it is accessed. 
# RANDOM % NUM_QUOTES: operator % gives the remainder of a division.
# Common way to get a random number within a specific range (from 0 to NUM_QUOTES - 1)
RANDOM_INDEX=$(( RANDOM % NUM_QUOTES))

# Display the random quote
# ${QUOTES[$RANDOM_INDEX]}: accesses an element of the array using its index.

echo "-- Daily Quote --"
echo "${QUOTES[$RANDOM_INDEX]}"
echo "-----------------------"
