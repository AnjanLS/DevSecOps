#!/bin/bash

FILE="/etc/passwd"

if [ -f "$FILE" ]; then
    echo "$FILE File exists"  # Exit status 0 (true)
else
    echo "$FILE File does not exist"  # Exit status non-zero (false)
fi