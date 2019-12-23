#!/bin/bash/ -x

read -p "Enter number" num


while  [ $num -lt 256 ]
do
num=$(( 2 * $num ))


echo "$num"
done


