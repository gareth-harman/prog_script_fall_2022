#!/bin/bash

# Download the file if it doesn't exist 
    # Print if it does exist
if [[ ! -e statelist.txt ]]; then
    echo "Downloading file..."
    curl "https://gist.githubusercontent.com/bensie/130828/raw/43d59239b4c1c40672dc6eea0f4565a8915b5372/states.txt" -o statelist.txt
else
    echo "File already exists..."
fi

logfile="k_states.txt"

if [[ -e ${logfile} ]]; then
    echo "Removing logfile..."
    rm ${logfile}
fi
