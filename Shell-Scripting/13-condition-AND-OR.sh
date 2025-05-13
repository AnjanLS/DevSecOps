#!/bin/bash

echo "please enter your age for voting!"
read AGE
age=$AGE
country="USA"

if [ $age -ge 18 ] && [ "$country" == "USA" ]; then
    echo "You can vote in the USA."
fi