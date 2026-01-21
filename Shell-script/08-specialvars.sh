#!bin/bash

echo "number of variables passed: $@"
echo "current script name: $0"
echo "current user name: $USER"
echo "HOme directory of user: $HOME"
echo "present working directory: $PWD"
echo "process id of currect: $!"
echo "precess id of previous command: $#"
sleep 6 &
echo "exit status of previous: $?"