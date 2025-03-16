#!/bin/bash

echo "Please enter your score: "
read SCORE

if [ "$(echo "$SCORE > 35" | bc -l)" -eq 1 ]; then
    echo "Great! You passed."
elif [ "$(echo "$SCORE == 35" | bc -l)" -eq 1 ]; then
    echo "You passed."
else
    echo "You failed."
fi
