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

VALIDATE(){
    if [ $1 -ne 0 ]
    then
        echo "$2 .... :: FAILURE"
    else
        echo "$2 ....:: SUCCESS "
    fi
}

CHECK_ROOT 

dnf list available mysql
if [ $? !-eq 0 ]
then
    echo "Mysql is not installed"
    dnf install mysql -y
    VALIDATE $? "MYSQL IS installing"
else
    echo "Mysql is already installed"
fi




#dnf list available git -y

#dnf install git -y
