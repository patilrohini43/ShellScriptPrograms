#!/bin/bash/ -x



read -p "Enter Number" number
count=0
for (( i=2; i<$number; i++ ))
do
	
	while [[ $(( $number % $i )) -eq 0 ]]
	do
	arr[((count++))]=$i
	number=$(( number / i ))
	done
done
	echo "${arr[@]}"


















