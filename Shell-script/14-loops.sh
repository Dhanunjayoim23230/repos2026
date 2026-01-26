#!bin/bash

for i in {0..5}
do
    echo " print $i"
done

echo "********************************************************"

for var in apple banana orange
do
    echo " print fruits name: $var"
done

echo "********************************************************"

i=$1

while [ i -eq 4 ]
do
    echo " Print while loop: $i "
done

echo "********************************************************"

while read -r file
do
    echo "file content: $file"
done < 13-logs.sh

