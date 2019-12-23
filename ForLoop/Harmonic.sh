#!/bin/bash -x

read -p "Enter Number" num
value=0
sum=0
for (( i=1; i<=num ;i++ ))
do
	value=$( echo 1 / $i | bc -l )
 	sum=$( echo $sum + $value  | bc -l )
 echo "Sum of Number is $sum"
done
