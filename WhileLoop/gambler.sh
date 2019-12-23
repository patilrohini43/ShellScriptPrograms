

#!/bin/bash/ -x

cash=100
goal=200
win=0

	while [[ $cash -gt 0 && $cash -lt $goal ]]
	do

	random=$(( RANDOM % 2 ))	
	if [[ $random -eq 1 ]]
	then
		cash=$(( cash + 1 ))
		win=$(( win + 1 ))
	else
		cash=$(( cash - 1))
		loss=$(( loss + 1 ))
	fi
   done

echo "$cash"
echo "$win"
echo "$loss"





