#!bin/bash

# mkdir -p /home/ec2-user/source/app_logs
# mkdir -p /home/ec2-user/dest/backup_logs


SOURCE_DIR=$1
DEST_DIR=$2
DAYS=${3:-14}

USAGE(){
        echo "USAGE:: backup <SOURCE_DIR> <DEST_DIR> <DAYS(optional)>"
        exit 1
}

if [ $# -lt 2 ]
then
    USAGE
fi

if [ -d $SOURCE_DIR ]
then
    echo "source directory is available:: $SOURCE_DIR"
else
    echo "source directory not available $SOURCE_DIR "
    exit 1
fi

if [ -d $DEST_DIR ]
then
    echo "destination directory is available ::$DEST_DIR"
else
    echo "destination directory not available ::$DEST_DIR"
    exit 1
fi

FIND_FILES=$(find $SOURCE_DIR -name "*.log" -mtime +$DAYS )

if [ -n $FIND_FILES ]
then
    echo "backup eligible files:: $FIND_FILES "
else
    echo "No file to backup"
fi
