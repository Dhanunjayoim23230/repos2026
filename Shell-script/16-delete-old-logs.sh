#!bin/bash

SOURCE_DIR="/home/ec2-user/shell_script_logs"

FILES_TO_DELETE=$(find $SOURCE_DIR -name "*.log")
while files in line
do
    echo "print the files:: $files"
   # rm -rf $files
done <<< $FILES_TO_DELETE