#!bin/bash

echo "number of variables passed: $@"
echo "current script name: $0"
echo "current user name: $USER"
echo "HOme directory of user: $HOME"
echo "present working directory: $PWD"
echo "process id of last command in backend: $!"
echo "Number of varialbes passed: $#"
sleep 6 &
echo "exit status of previous: $?"
echo "process id of current script: $$"