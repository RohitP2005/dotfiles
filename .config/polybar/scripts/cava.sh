#!/bin/bash

# Define the characters for bars
bar="▁▂▃▄▅▆▇█"

# Initialize the dictionary to replace numbers (0-9) with bar characters
dict="s/;//g;"

# Create the dictionary to map numbers to the custom characters
i=0
while [ $i -lt ${#bar} ]
do
    dict="${dict}s/$i/${bar:$i:1}/g;"
    i=$((i + 1))
done

# Path to Cava's configuration file
config_file="$HOME/.config/cava/config"

# Run Cava and pipe the output through the sed-based transformation
# Read the output from Cava and transform it using the custom bars
cava -p $config_file | while read -r line; do
    # Apply the dictionary to replace characters and show the result
    echo "$line" | sed $dict
done

