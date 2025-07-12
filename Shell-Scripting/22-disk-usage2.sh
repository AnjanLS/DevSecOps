#!/bin/bash

DISK_USAGE = echo $(df -hT | grep xfs) 
DISK_THRESHOLD = 5

while read -r line
do
    USAGE = $(echo $line | awk -F "" '{print $6F}' | cut -d "%" -f1)
    
done <<< $DISK_USAGE