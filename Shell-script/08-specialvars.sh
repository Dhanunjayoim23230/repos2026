#!bin/bash

echo "current user name: $USER"
echo "Home directory of user: $HOME"
echo "present working directory: $PWD"

echo "current script name: $0"
echo "All variables passed: $@"
echo "Number of variables passed: $#"



sleep 6 &
echo "process id of current script: $$"
echo "exit status of previous: $?"

echo "process id of last command in backend: $!"

