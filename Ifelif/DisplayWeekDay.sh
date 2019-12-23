#!/bin/bash/ -x

read -p "Enter Number for display the day" number

if [ $number -eq  1 ]
	then
	echo "Monday"
	elif [ $number -eq  2 ]
	then
	echo "TuesDay"
	elif [ $number -eq  3 ]
	then
	echo "Weansday"
	elif [ $number -eq  4 ]
	then
	echo "Friday"
	elif [ $number -eq  5 ]
	then
	echo "Saturday"
	elif [ $number -eq  6 ]	
	then
	echo "Sunday"
fi
