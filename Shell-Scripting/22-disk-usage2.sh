#!/bin/bash

DISK_USAGE = echo $(df -hT | grep xfs) 
DISK_THRESHOLD = 5

while read -r line
do
    echo $line
done <<< $DISK_USAGE