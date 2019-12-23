#!/bin/bash/ -x

count=1
declare -A Person

while [ $count -lt 50 ]
do
randomYear=$(( RANDOM % 2 ))
randomMonth=$(( RANDOM % 12 + 1 ))
Person[$randomMonth]=$(( "${Person[$randomMonth]}" + 1 ))
count=$(( count + 1 ))
done

len=${#Person[@]}
for (( i=1; i<$len; i++ ))
do
echo  "Month $i"  $'\t'  " ${Person[$i]}"
done


