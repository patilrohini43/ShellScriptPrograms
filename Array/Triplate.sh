#!/bin/bash/ -x

function triplate()
{
for((i=0; i<$(($length-2)); i++))
do
	for (( j=$((i+1)); j<$(($length-1)); j++ ))
	do
		for (( k=$((j+1)); k<$length; k++ ))
		do
			if [ $(( ${arr[i]} + ${arr[j]} + ${arr[k]} )) -eq 0 ]
			then
				echo "${arr[i]} + ${arr[j]} + ${arr[k]} == 0"
			fi
		done
	done
done
}

###########  Main Method ##################
arr=( "1" "-2" "0" "-1" "3")
length=${#arr[@]}
triplate

