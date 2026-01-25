#!bin/bash

echo "print given number is less than 100"

# -le, -ge, -lt, -gt, -eq
Number=$1

if [$1 -le 100]
then
    echo "Given number is less than or equal to 100"

else    
    echo "given number is greate than 100"
fi
