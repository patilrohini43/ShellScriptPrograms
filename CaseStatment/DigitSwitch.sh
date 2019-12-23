#!/bin/bash/ -x


read -p "Enter Number" number
case $number in
	0)
 	  word="Zero" ;;
	1)
	  word="One" ;;
	2)
		word= "Two" ;;
	3)
		word "Three" ;;
	4)
 	   word="Four" ;;
	*)
		word= "Five" ;;
esac
echo $word


