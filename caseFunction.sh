#! /bin/bash

# taking inputs from user
# here function is being used to take inputs from user
inputs() {
    read -p "Enter first integer : " int1
    read -p "Enter second integer : " int2
}

# functions for question if going on or quit
# for this here a function is declared
exitPrompt() {
    read -p "Do you want to continue? [y]es or [n]o :  " answer
    if [[ $answer == 'n' ]]; then
        echo "Exiting the script. Have a nice day..."
        sleep 3
        exit 
    else
        continue
    fi 
}

# while loop for the operation
# loop will run untill it will be false
while(true)
    do
    clear
    # here given string will be displayed on the screen
    printf "Choose from the following operations : \n"
    printf "[a]Addition\n[b]Subtraction\n[c]Multiplication\n[d]Division\n"
    printf "\n"
    printf "\n"
    printf "#####################################\n"
    printf "\n"
    printf "\n"
    read -p "Your choice : " choice 

    # case expression is being started and declared
    case $choice in 
    [aA])
        inputs
        res=$((int1+int2))
    ;;

    [bB])
        inputs
        res=$((int1-int2))
    ;;

    [cC])
        inputs
        res=$((int1*int2))
    ;;

    [dD])
        inputs
        res=$((int1/int2))
    ;;

    *)
        res=0
        echo "wrong choice!!!"
    
    # ending case expression
    esac


    # displays result
    echo "The result is : " $res
    exitPrompt

# while loop ended
done