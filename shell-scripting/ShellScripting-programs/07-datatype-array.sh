#!/bin/bash

cars=("mustang" "Ferrari" "rolls-royce" "mitsubishi")

echo my car collections are: ${cars[@]}
echo "my first car collection is: ${cars[0]}"
echo "my second car collection is: ${cars[1]}"
echo "my last car collection is: ${cars[-1]}"
echo "my total car collections are: ${#cars[@]}" #counting total numbers in an array