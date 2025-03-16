#!/bin/bash

echo "please enter your score: "
read SCORE
marks=$(echo "$SCORE" | bc)
if (($("$marks > 35" | bc -l))) then
echo "great! you are pass."
elif (($("$marks == 35" | bc -l))) then
echo "you are pass."
else
echo "you are fail"