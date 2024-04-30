#!/bin/bash

# Loop through numbers 1 to 5
for i in {1..5}; do
    # Create file with name "file${i}"
    touch "file${i}"
    echo "Created file${i}"
done
