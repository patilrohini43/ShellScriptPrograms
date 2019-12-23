declare -A storeDie
status=0
while [ $status -eq 0 ]
do
dieNumber=$(( RANDOM % 5 + 1 ))
echo $dieNumber
storeDie[$dieNumber]=$(( "${storeDie[$dieNumber]}" + 1 ))
	if [ ${storeDie[$dieNumber]} -eq 10 ]
	then
		status=1	
	fi
done

len=${#storeDie[@]}
for (( i=1; i<$len; i++ ))
do
echo "$i Maximum Number" ${storeDie[$i]}
done | sort -k4 -nr | head  -1


for (( i=1; i<$len; i++ ))
do
echo  "$i Minimum Number" ${storeDie[$i]}
done | sort -k1 -nr | tail  -1



