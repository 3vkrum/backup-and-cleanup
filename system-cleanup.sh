#!/bin/bash

# Function to clean up temporary files
cleanup_temp_files() {
    echo "Cleaning up temporary files..."
    sudo rm -rf /tmp/*
    sudo rm -rf /var/tmp/*
    echo "Temporary files cleaned up."
}

# Function to clean up old log files
cleanup_log_files() {
    echo "Cleaning up old log files..."
    sudo find /var/log -type f -name '*.gz' -delete
    sudo find /var/log -type f -name '*.log.*' -delete
    sudo find /var/log -type f -name '*.1' -delete
    sudo find /var/log -type f -name '*.old' -delete
    echo "Old log files cleaned up."
}


# Main function
main() {
    echo "Starting system cleanup..."

    cleanup_temp_files
    cleanup_log_files

    echo "System cleanup completed."
}

# Call the main function
main
