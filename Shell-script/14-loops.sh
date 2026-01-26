#!bin/bash

# for i in {0..5}
# do
#     echo " print $i"
# done

# echo "********************************************************"

# for var in apple banana orange
# do
#     echo " print fruits name: $var"
# done

# echo "********************************************************"

# j=0

# while [ $j -le 4 ]
# do
#     echo " Print while loop: $j "
#     ((j++))
# done

# echo "****** while :: Repeats while a condition is true **************************************************"

# while read -r file
# do
#     echo "file content: $file"
# done < 13-logs.sh

# echo "*******until :: Runs until condition become true(Inverse of while) *************************************************"
# # #Runs until condition become true(Inverse of while)
# i=1
# until [ $i -gt 5 ]
# do
#     echo "print until loop from 1 to 5 :$i "
#     ((i++))
# done

# echo "********************************************************"
# #executes until statement becomes true
# i=10
# until [ $i -le 5 ]
# do
#     echo "print until loop from 1 to 5 :$i "
#     ((i--))
# done

# echo "********************************************************"

# until read -r file
# do
#     echo "file content: $file"
# done < 13-logs.sh

# echo "********************************************************"
select colour in red orange green blue violet
do
echo " you choose colour :: $colour "
    if [ "$colour" -eq "orange" ]
    then
        echo " i selected colour :: $colour "
    fi
    if [ "$colour" -eq "red" ]
    then
        echo " i selected colur :: $colour"
    fi
break
done