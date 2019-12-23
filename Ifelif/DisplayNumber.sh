#!/bin/bash/ -x


read -p "Enter Number" number

if [ $number -eq 1 ]
	then
		echo "Unit"
elif [ $number -eq 100 ]
	then
		echo "Hundred"
elif [ $number -eq 1000 ]
	then
		echo "Thousand"
fi
