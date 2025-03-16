#!/bin/bash

age=25
country="USA"

if [ $age -ge 18 ] && [ "$country" == "USA" ]; then
    echo "You can vote in the USA."
fi