#!bin/bash

#/home/ec2-user/source/app_logs
#/home/ec2-user/dest/backup_logs


SOURCE_DIR=$1
DEST_DIR=$2
DAYS=${3:-14}

USAGE(){
    if[ $# -ne 2 ]
    then
        echo "USAGE:: backup <SOURCE_DIR> <DEST_DIR> <DAYS(optional)>"
        exit 1
    fi
}

USAGE

# if [ -f $SOURCE_DIR ]
# then
#     echo "source directory is available"
# else
#     echo "source directory not available"
#     exit 1
# fi

# if [ -f $DEST_DIR ]
# then
#     echo "destination directory is available"
# else
#     echo "destination directory not available"
#     exit 1
# fi

# FIND_FILES=$(find $SOURCE_DIR -name "*.log" -mtime +$DAYS )

# if [ -f $FIND_FILES ]
# then
#     echo "backup eligible files:: $FIND_FILES "
# else
#     echo "No file to backup"
# fi
