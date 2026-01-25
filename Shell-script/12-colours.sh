#!/bin/bash


#install git and mysql

R="\e[31m"
G="\e[32m"
Y="\e[33m"
N="\e[0m"

mkdir -p /home/ec2-user/shell_script_logs

LOG_FILE=$(echo $0 | cut -d "." -f1)
TIMESTAMP=$(date +%Y-%m-%d_%H-%M-%S)
LOGS_FOLDER="/home/ec2-user/shell_script_logs"
LOGS_FILE_NAME="$LOGS_FOLDER/$LOG_FILE-$TIMESTAMP.logs"

USER_ID=$(id -u)

CHECK_ROOT(){
    if [ $USER_ID -ne 0 ]
    then
        echo -e " $Y You must need sudo permissions $N"
        exit 1
    fi
}

VALIDATE(){
    if [ $1 -eq 0 ]
    then
        echo -e "$2 ........ ::$G SUCCESS $N "
    else
        echo -e "$2 ......... ::$R FAILED $N "
    fi
}

CHECK_ROOT 

dnf install mysql -y &>>$LOGS_FILE_NAME
VALIDATE $? "MYSQL installing"



dnf install git -y &>>$LOGS_FILE_NAME

VALIDATE $? "GIT installing"


