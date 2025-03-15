#!/bin/bash

cars=("mustang" "Ferrari" "rolls-royce" "mitsubishi")

echo my car collections are: ${cars[@]}
echo "first car is:${cars[0]}"
echo "second car is:${cars[1]}"
echo "last car is:${cars[-1]}"