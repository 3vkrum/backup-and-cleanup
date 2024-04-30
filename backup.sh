#!/bin/bash

# Source directories to backup
SOURCE_DIRS=(
    "/etc"
    "/var"
)

# Destination directory for backups
DEST_DIR="/home/Trivikram/backups"

# Backup function
perform_backup() {
    local timestamp=$(date +"%Y%m%d%H%M%S")
    local backup_dir="$DEST_DIR/backup_$timestamp"

    echo "Creating backup directory: $backup_dir"
    mkdir -p "$backup_dir"

    for dir in "${SOURCE_DIRS[@]}"; do
        echo "Backing up directory: $dir"
        cp -r "$dir" "$backup_dir"
    done

    echo "Backup completed successfully."
}

# Main function
main() {
    echo "Starting backup process..."

    perform_backup

    echo "Backup process completed."
}

# Call the main function
main
