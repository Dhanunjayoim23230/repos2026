#!bin/bash

echo "print given number is less than 100"

# -le, -ge, -lt, -gt, -eq
Number=$1

if [$1 -le 100]
    then
        echo "Given number $1 is less than or equal to 100"
    else    
        echo "given number  $1 is greater than 100"
fi
