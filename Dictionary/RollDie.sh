
#!/bin/bash/ -x
count=0

for((i=0;i<=10;i++))
do
random=$(( RANDOM % 6 ))
Dice["$i"]=$random
done
echo ${Dice[@]}

declare -A count
max=0

len=${#Dice[@]}

for d in ${Dice[@]}
do
    if (( ++count[$d] > max )) ; 
		then
        max=${count[$d]}
        num=$d
    fi
done
echo  $num :: $max times
