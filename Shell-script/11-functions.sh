#!/bin/bash


#install git and mysql


mkdir -p /home/ec2-user/shell_script_logs

LOG_FILE=$(echo $0 | cut -d "." -f1)
TIMESTAMP=$(date +%Y-%m-%d_%H-%M-%S)
LOGS_FOLDER="/home/ec2-user/shell_script_logs"
LOGS_FILE_NAME="$LOGS_FOLDER/$LOG_FILE-$TIMESTAMP.logs"

USER_ID=$(id -u)

CHECK_ROOT(){
    if [ $USER_ID -ne 0 ]
    then
        echo "You must need sudo permissions"
        exit 1
    fi
}

VALIDATE(){
    if [ $1 -eq 0 ]
    then
        echo "$2 is already installed :: SUCCESS "
    else
        echo "$2 is not installed :: FAILED "
    fi
}

CHECK_ROOT 

dnf install mysql -y &>>$LOGS_FILE_NAME
VALIDATE $? "MYSQL installing"



dnf install git -y &>>$LOGS_FILE_NAME

VALIDATE $? "GIT installing"


