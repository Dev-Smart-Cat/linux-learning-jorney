#!/bin/bash

# SCRIPT PURPOSE => finds a file in a dir that have not modified in a given number.
# Use the commented delete lines to delete the files found.

# /var/log is in /
# /var/log it is a directory where the logs are stored: errors, events, warnings, etc
TARGET_DIR="/var/log"

DAYS_OLD=30

echo "Searching for files older than $DAYS_OLD days in $TARGET_DIR..."

# The -print option is for demonstration. Replace with -delete for actual deletion.

# find: command for searching for a file.
# -type f: specifies to search only for files.
# -mtime +$DAYS_OLD: finds files modified more than $DAYS_OLD days ago.
find "$TARGET_DIR" -type f -mtime +$DAYS_OLD -print

# To actually delete, use this command instead:

# -delete: tells find to delete files found.
# find "$TARGET_DIR" -type f -mtime + $DAYS_OLD -delete
# echo "Deletion complete".
