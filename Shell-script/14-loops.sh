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

j=0

while [ $j -le 4 ]
do
    echo " Print while loop: $j "
    ((j++))
done

echo "********************************************************"

# while read -r file
# do
#     echo "file content: $file"
# done < 13-logs.sh

echo "********************************************************"
#Runs until condition become true(Inverse of while)
i=1
until [ $i -le 5 ]
do
    echo "ptint until loop $i "
    ((i++))
done

echo "********************************************************"