#!/bin/bash
read -p "enter username: " USERNAME  #reads the input given by the user and stores it in variable USERNAME
read -p "enter password: " PASSWORD  #NO NEED TO DEFINE THESE VARIABLES BEFOREHAND. CAN RECOGNISE IN THE READ COMMAND ITSELF
echo "YOUR USERNAME IS $USERNAME AND PASSWORD IS $PASSWORD"


#read -p option gives the prompt and stores our input in a variable in the same line;
#de-necessiates the need to use echo command for prompt; 