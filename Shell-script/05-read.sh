#!/bin/bash

echo "enter values for x"
read x

if [ $x -gt 100 ]
then
    echo "x value($x) is greater than 100"
else
    echo "x values ($x) is less than 100"
fi

