#!/bin/bash

# ls -l: lists files in long format

# grep "^-": filters for lines starting with '-', which indicates a regular file
# wc -l: counts the number of lines

# Assign the info to a variable

FILE_COUNT=$(ls -l | grep "^-" | wc -l)

# Assign the current dir a variable

CURRENT_DIR=$(pwd)

# Prints text in the terminal

echo "There are $FILE_COUNT files in the current directory $CURRENT_DIR"


