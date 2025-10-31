#!/bin/bash
echo "enter username:"
read -s USERNAME
echo "enter password:"
read -s PASSWORD
echo "YOUR USERNAME IS $USERNAME AND PASSWORD IS $PASSWORD"

# read -s option does't display the input we are giving to the variable;