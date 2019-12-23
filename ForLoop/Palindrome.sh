#!/bin/bash/ -x


function palindrome()
{
n=$1
while [ $n -gt 0 ]
do
reminder=$(( $n % 10 ))
reverse=$(( ($reverse * 10) + $reminder))
n=$(( $n / 10 ))
done
echo $reverse
}



### Main Method ###

read -p "Enter First Number" fno
read -p "Enter Second Number" sno
reverse=0;
reversenum="$( palindrome $fno )"
number="$( palindrome $sno )"
if [ $number -eq $reversenum ]
then
	echo "palindrome number"
else
	echo "not palindrome number"
fi


