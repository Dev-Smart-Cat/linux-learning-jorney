#!/bin/bash

# Enter the directory name for backup

echo "Enter the directory name for backup"

# Inout the dir name on the terminal
read DIR_NAME

# Using the input dir name to create the file path
SOURCE_DIR="/home/weverson_barbieri/$DIR_NAME"

# Print a message to enter the backup file
echo "Enter the backup file name:"

# Input the backup file
read BACKUP_DIR

# Create a timestamp
TIMESTAMP=$(date +"%Y-%m-%d_%H-%M-%S")

# Create a backup file name using the timestam
BACKUP_FILENAME="backup_file_test$TIMESTAMP.tar.gz"

# Check if backup directory exists, if not, create it
if [ ! -d "$BACKUP_DIR" ]; then
	
	echo "Backup directory not found. Creating it."
	mkdir -p "$BACKUP_DIR"
fi

# Create the compressed archive 
echo "Creating backup of $SOURCE_DIR..."

# Create a .tar file 
tar -czf "$BACKUP_DIR/$BACKUP_FILENAME" "$SOURCE_DIR"

# Print a message showing the backupo was created
echo "Backup completed!"

# Print directory where the backup was created
echo "File created: $BACKUP_DIR/$BACKUP_FILENAME"
