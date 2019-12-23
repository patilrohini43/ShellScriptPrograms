#!/bin/bash/ -x



function getdegF()
{
 c=$1
 degF=$(( ( $c * 9 / 5 ) + 32 ))
 echo $degF
}

function getdegC()
{
 f=$1
 degC=$(( ( $f - 32 ) * 5/9 ))
 echo $degC 
}


##### Main Method #####
ch1=1
ch2=2
read -p "enter the temperature in farads" farad
read -p "enter the temperature in celeious" celeious
read -p "Enter Choice" choice

case $choice in
	$ch1)
   degFarad="$( getdegF $farad )"
	echo "$degFarad"
	;;
	$ch2)
	degCeleious="$( getdegC $celeious )"
	echo "$degCeleious" 
	;;
	*)
	echo "Invalid Choice"
esac
