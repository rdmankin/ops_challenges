#!/bin/bash

# Script Name: Ops Challenge Conditionals

# Author: Raymond Mankin

# Date of last revision: 10/30/2023

# Purpose: Bash Script Conditionals

#!/bin/bash

files_and_dirs=("array.txt" "directory1" "conditional.txt")

for item in "${files_and_dirs[@]}"; do
    if [ -e "$item" ]; then
        echo "$item exists."
    else
        if [[ "$item" == *.* ]]; then
            touch "$item"  
            echo "$item created."
        else
            mkdir "$item"  
            echo "$item directory created."
        fi
    fi
done


