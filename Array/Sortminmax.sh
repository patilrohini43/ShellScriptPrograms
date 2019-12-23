#!/bin/bash/ -x

count=0
large=0
small=0

for((i=0; i<= 10; i++ ))
do
random=$(( RANDOM % 1000))
Array[(( count++ ))]=$random
done
echo ${Array[@]}

for i in ${Array[@]}
do
	if [[ $i -gt $large ]]
	then
		small=$large
		large=$i
	fi

	if [[ $i -lt $small ]]
	then
		small=$i
	fi
done

echo "maximum number $large"
echo "minimum number $small"
