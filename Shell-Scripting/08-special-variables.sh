#!/bin/bash

echo "number of variables: $#"
echo "my present working directory is: $PWD" #or $(pwd)
echo "my present home is: $HOME"
echo "current date and time is: $(date)"
echo "current user is: $USER"
echo "script name is: $0"
echo "process id of current script: $$"
sleep 10 &
echo "process id of last cmd in background: $!"