#!/bin/bash/ -x


function palindrome()
{
reverse=0;
n=$1
while [ $n -gt 0 ]
do
reminder=$(( $n % 10 ))
reverse=$(( ($reverse * 10) + $reminder))
n=$(( $n / 10 ))
done
if [ $n -eq $reverse ]
then
	flag=true
else
	flag=false
fi
echo $flag
}

function prime()
{
num=$1
flag=false
for((i=2; i<=$num/2; i++))
do
  if [ $(($num%i)) -eq 0 ]
  then
     flag=true
    else
    flag=false
  fi
done
echo $flag
}



############### Main Method ################


read -p "Enter First Number" number
prime="$( prime $number )"
palindrome"$( palindrome $number )"

if [ $prime -eq $palindrome ]
then
	echo "Number is PrimePalindrome"
else
	echo "Number is Not a PrimePalindrome"
fi





