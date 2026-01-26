#!bin/bash

SOURCE_DIR="/home/ec2-user/shell_script_logs"

FILES_TO_DELETE=$(find $SOURCE_DIR -name "*.log" -mtime +30)
echo "$FILES_TO_DELETE"

while read -r file
do
    echo "print the files:: $file"
    
   # rm -rf $files
done <<< $FILES_TO_DELETE