#!/bin/bash


#install git and mysql


mkdir -p /home/ec2-user/shell_script_logs

LOG_FILE="$(echo "$0" | cut -d "." -f1)"
TIMESTAMP=$(date +%Y-%m-%d_%H-%M-%S)
LOGS_FOLDER="/home/ec2-user/shell_script_logs"
LOGS_FILE_NAME="$LOGS_FOLDER/$LOGS_FILE-$TIMESTAMP.logs"

USER_ID=$(id -u)

CHECK_ROOT(){
    if [ $USER_ID -ne 0 ]
    then
        echo "You must need sudo permissions"
        exit 1
    fi
}

CHECK_ROOT 

dnf install mysql -y
if [ $? -ne 0 ]
then
    echo " MYSQL is installed..:: SUCCESS "
else
    echo "MYSQL is not installed ..:: FAILED"
fi



dnf install git -y

if [ $? -ne 0 ]
then
    echo " GIT is installed..:: SUCCESS "
else
    echo "GIT is not installed ..:: FAILED"
fi


