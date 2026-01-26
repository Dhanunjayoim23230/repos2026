#!bin/bash

SOURCE_DIR="/home/ec2-user/shell_script_logs"

FILES_TO_DELETE=$(find $SOURCE_DIR -name "*.log")
while file in line
do
    echo "print the files:: $file"
   # rm -rf $files
done <<< $FILES_TO_DELETE