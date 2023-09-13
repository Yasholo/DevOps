#!/bin/bash

# Define the parent directory
parent_directory="/mnt/a57ccb77-a765-4dca-b87c-b337ac842dee/Sharedvm/FreeCodeCamp-JavaScript-Algorithms-and-Data-Structures/ES6"

# Define the destination directory
destination_directory="/mnt/a57ccb77-a765-4dca-b87c-b337ac842dee/Sharedvm/FreeCodeCamp-JavaScript-Algorithms-and-Data-Structures/nf"

# Iterate through directories in the parent directory
for dir in "$parent_directory"/*/; do
    # Extract the directory name
    dirname=$(basename "$dir")

    # Move files from each directory to the destination directory and rename them
    find "$dir" -type f -exec bash -c 'mv "$1" "$2"/"$3_${1##*/}"' bash {} "$destination_directory" "$dirname" \;
done
