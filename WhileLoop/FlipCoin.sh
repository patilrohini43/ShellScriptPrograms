#!/bin/bash/ -x


head=0
tail=0
win=11
while [[ $head -le 11 && $tail -le 11 ]]
do
random=$(( $RANDOM%2 ))
echo "random no $random"
if [ $random -eq 1 ]
then
   head=$(( head+1 ))
  echo "$head===== head "
   else
   tail=$(( tail+1 ))
    echo "$tail ===== tail"
fi
done

if [[ $head -eq $win ]]
then
	echo "head win"
else
	echo "tail win"
fi
