#!/bin/bash

if [ -f "/etc/passwd" ]; then
    echo "File exists"  # Exit status 0 (true)
else
    echo "File does not exist"  # Exit status non-zero (false)
fi