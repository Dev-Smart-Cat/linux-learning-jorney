#!/bin/bash
# This script opens the directory entered on the VS code

# Enters the directory name
read -p "Enter the dir name: " DIR_NAME

# Enter into the directory
cd ~/"$DIR_NAME"

# Activate the venv on VS code
source ".venv/bin/activate"

# Open the VS code
code .


