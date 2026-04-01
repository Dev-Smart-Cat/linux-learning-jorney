i#!/bin/bash

# $1 refers to the first argument, $2 to the second, and so on.


# $1 works as the read preifx to input chars,
# but input needs to be done using "". 
# running the script: ./scrip "char" and "char will be the input to $1.
# output: char.
 
echo "Hello $1!"
echo "You are using the $2 theme."
