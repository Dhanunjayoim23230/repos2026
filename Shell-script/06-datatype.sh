#!bin/bash

N1=$1
N2=$2

TIMESTAMP=$date

echo "script executed at: ${TIMESTAMP}"

SUM=$(( $N1 + $N2))

echo "Sum of $N1 and $N2 is: $SUM"