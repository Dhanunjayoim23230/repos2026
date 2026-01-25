#!/bin/bash


#install git and mysql

LOG_FOLDER=
LOG_FILE=$(echo $0 | cut -d "." -f1)
TIMESTAMP=$(date +%Y-%m-%d_%H-%M-%S)
LOGS_FOLDER="/home/ec2-user/shell_script_logs"
LOGS_FILE_NAME="$LOGS_FOLDER/$LOGS_FILE-$TIMESTAMP.logs"



mkdir -p $LOGS_FOLDER &>>$LOGS_FILE_NAME

USER_ID=$(id -u)

CHECK_ROOT(){
if [$USER_ID -ne 0 ]
then
    echo "You must need sudo permissions"
fi
}

VALIDATE(){
    if [$1 -ne ]
}

dnf list available mysql -y

dnf install mysql -y

dnf list available git -y

dnf install git -y
