#!/bin/bash
script_dir="$(cd "$(dirname "$0")" && pwd)"
source_dir="$script_dir"

for file in "$source_dir"/files/*; do

    if [ "-f $file" ]; then
        # Get the first letter of the file name
        first_letter=$(basename "$file" | head -c 1)
        dest_dir="${first_letter,,}"  # Convert to lowercase for case insensitivity

        mv "$file" "$dest_dir/"
    fi
done