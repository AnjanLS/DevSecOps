#!/bin/bash

echo "please enter your score: "
read SCORE
marks=$SCORE
if [ $marks -gt 35 ] ; then
echo "great, you are pass!"
elif [ $marks -ge 35 ]; then
echo "you are pass"
else
echo "you are fail."
fi