#!/bin/bash

IFS=$'\n'

# Write the lines of ONLY THE US states that contain a K to a file called k_states.txt
for ii in `cat statelist.txt`; do

    # Check whether upper or lowercase k exists
    if [[ ${ii} = *k* ]] || [[ ${ii} = *k* ]]; then
    
        # Make sure Canada isnt in there
        if [[ ${ii} != *Canada* ]]; then
        
            # Change '' to "" makes it easier (other solutions)
            ii=`echo ${ii} | sed "s/'/\"/g"` 
            
            # Get 4th item of "
            k_state=`echo "$ii" | awk -F'"' '{print $4}'` 
            
            # Print to our log
            echo ${k_state} >> k_states.txt
        fi
    fi
done
