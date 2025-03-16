#!/bin/bash

echo "Enter a fruit name:"
read fruit

case $fruit in
    "apple") echo "Apple is red." ;;
    "banana") echo "Banana is yellow." ;;
    "grape") echo "Grapes are purple." ;;
    *) echo "Unknown fruit." ;;
esac