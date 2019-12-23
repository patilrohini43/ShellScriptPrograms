
#!/bin/bash/ -x


empRate=8000
isFulltime=1
isHalftime=0
hours=1
day=0

while [[ $hours -le 50 && $day -le 20 ]]
do
empCheck=$(( RANDOM % 3 ))
case $empCheck  in
     	$isFulltime)
                empHrs=8
				hours=$(( hours + isFulltime)) 
				day=$(( day +1 ))
						;;

	$isHalftime)
                empHrs=4
				hours=$(( hours + isHalftime ))
				day=$(( day +1 ))
						;;

    	*)
		empHrs=0 ;;
		esac
done
 salary=$(( empRate * empHrs ))

 echo $salary

