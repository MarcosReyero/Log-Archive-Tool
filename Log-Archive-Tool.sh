#!/bin/bash

# Check if the user provided a directory
if [ -z "$1" ]; then
    echo "Usage: $0 <log-directory>"
    exit 1
fi

# Variables
LOG_DIR="$1"
TIMESTAMP=$(date +"%Y%m%d_%H%M%S")
ARCHIVE_NAME="logs_archive_${TIMESTAMP}.tar.gz"
BACKUP_DIR="./log_backups"

# Create backup directory if it doesn't exist
mkdir -p "$BACKUP_DIR"

# Compress logs
tar -czf "$BACKUP_DIR/$ARCHIVE_NAME" -C "$LOG_DIR" .

# Log the archive operation
echo "$TIMESTAMP: Archived logs from $LOG_DIR to $BACKUP_DIR/$ARCHIVE_NAME" >> archive_log.txt

echo "Logs archived successfully: $BACKUP_DIR/$ARCHIVE_NAME"
