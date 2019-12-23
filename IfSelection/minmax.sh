#!/bin/bash/ -x


max=0
min=1000
for (( i=1; i<=5; i++ ))
do
random=$(( RANDOM % 1000 ))
echo "Random Number $i====> $random"

if [ $max -lt $random ];
then
max=$random
fi
if [ $min -gt $random ];
then
min=$random
fi
done

echo "max number $max"
echo "min number $min"
