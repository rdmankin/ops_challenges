#!/bin/bash


# Script Name: Arrays.sh

# Author: Raymond Mankin

# Date of last revision: 10/26/2023

# Purpose: Create new folders


# Declaration of variables


# Declaration of functions


# Main- This is an Array and I used part of the code from Bard

directory_names=("Tank" "Bradley" "Stryker" "Wheels")

for directory_name in "${directory_names[@]}"; do
  mkdir -p "$directory_name"
done

for directory_name in "${directory_names[@]}"; do
  echo "This is a new file in $directory_name." > "$directory_name/new_file.txt"
done








# End