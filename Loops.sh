#!/bin/bash


# Script Name: Loops.sh

# Author: Raymond Mankin

# Date of last revision: 10/27/2023

# Purpose: Create Loops


# Declaration of variables


# Declaration of functions


# Main- This is a loop and I used Bard for pieces of the code

# The PID that was killed was Sleep 1 


#!/bin/bash

sleep 60 &

while true; do

  ps aux

  read -p "Enter a PID to kill: " pid

  if [[ $? -eq 130 ]]; then
    break
  fi

done

wait

# End