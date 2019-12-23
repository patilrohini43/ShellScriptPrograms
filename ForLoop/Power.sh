#!/bin/bash/ -x

read -p "Enter number" num
echo "$num"
i=0
powerno=1
while  [ "$i" -le "$num" ]
do


powerno=$(( 2 * powerno ))
i=$(( i+1 ))

echo "$i=====>$powerno"
done

