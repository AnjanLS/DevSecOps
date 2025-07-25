#!/bin/bash

dnf list installed bc > /dev/null 2>&1  #it will not display this cmd list
if [ $? -ne 0 ]; then
    sudo dnf install bc -y
else
    echo "Please enter your score: "
    read SCORE

    if [ "$(echo "$SCORE > 35" | bc -l)" -eq 1 ]; then
        echo "Great! You passed."
    elif [ "$(echo "$SCORE == 35" | bc -l)" -eq 1 ]; then
        echo "You passed."
    else
        echo "You failed."
    fi
fi
