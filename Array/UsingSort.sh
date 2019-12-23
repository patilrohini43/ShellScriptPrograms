#!/bin/bash/ -x

count=0
large=0
small=0

for((i=1; i<= 10; i++ ))
do
random=$(( RANDOM % 1000))
arr[(( count++ ))]=$random
done


for (( i=0; i<10; i++ ))
do
	echo $i
	for (( j=$(( i + 1 )); j < 10; j++ ))
	do
		if [[ ${arr[i]}  -gt ${arr[j]} ]]
		then
			temp=${arr[i]}
			arr[(($i))]=${arr[j]}
			arr[(($j))]=$temp

			fi
	done
done

echo ${arr[@]}
echo "MaxMum Number ${arr[8]}"
echo "Minimum Number ${arr[1]} "


