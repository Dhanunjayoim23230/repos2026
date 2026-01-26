#!bin/bash

SOURCE_DIR="/home/ec2-user/shell_script_logs"

FILES_TO_DELETE=$(find $SOURCE_DIR -name "*.log" -mtime +30)
echo "$FILES_TO_DELETE"

if [ $FILES_TO_DELETE -eq 0 ]
then
    echo " files present to delete +30days"
    while read -r files
    do
        echo "print the files to delete :: $files"

    rm -rf $files

    echo "Files deleted :: $files "
    done <<< $FILES_TO_DELETE
else
    echo "No files present to delete +30days"
fi