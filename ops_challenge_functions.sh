#!/bin/bash

# Script Name: Ops Challenge Functions

# Author: Raymond Mankin

# Date of last revision: 10/25/2023

# Purpose: Bash Script Intro


# Declaration of variables


# Declaration of functions


# Main 
#!/bin/bash
display_login_history() {
  echo "Login History:"
  last
}


for i in {1..3}; do
  display_login_history
done

#!/bin/bash

# Stretch Goal
function greet_user() {
  local username="$1"  # Store the argument in a local variable
  echo "Hello, $username! Ops Functions."
}

greet_user "Ray"
Hello, Ray! Ops Functions.






# End