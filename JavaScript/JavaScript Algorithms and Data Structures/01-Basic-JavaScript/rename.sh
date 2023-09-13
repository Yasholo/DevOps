#!/bin/bash

for file in *.js; do
  # Extract the filename without the extension
  filename="${file%.*}"

  # Extract the extension of the file
  extension="${file##*.}"

  # Check if the filename starts with a number
  if [[ $filename =~ ^[0-9]+ ]]; then
    # Add '0' at the start of the filename
    new_filename="0$filename"
  else
    # If the filename doesn't start with a number, keep it as it is
    new_filename="$filename"
  fi

  # Add the extension back to the filename
  new_filename="$new_filename.$extension"

  # Rename the file
  mv "$file" "$new_filename"
done
