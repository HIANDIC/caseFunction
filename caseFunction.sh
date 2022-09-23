#! /bin/bash

# taking inputs from user
# here function is being used to take inputs from user
input() {
    read -p "Enter first integer : " int1
    read -p "Enter second integer : " int2
}

# functions for question if going on or quit
# for this here a function is declared
exitPrompt() {
    read -p "Do you want to continue? [y]es or [n]o :  " answer
    if (( $answer == 'n' )); then
        echo "Exiting the script. Have a nice day..."
        sleep 3
        exit 
    else
        continue
    fi 
}

# while loop for the operation

# case expression

# displays result