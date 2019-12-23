
#!/bin/bash/ -x

hours=0
isFulltime=1
isHalftime=0
day=0
empRate=2000

function getWorking()
{
hours=$(( $hours + $1 ))
echo $hours
}


while [[ $hours -le 50 && $day -le 20 ]]
do
empCheck=$(( RANDOM % 3 ))
case $empCheck  in
     	$isFulltime)
                empHrs=8
				    hours="$( getWorking  $empHrs )" 
						day=$(( day + 1 ))
						;;

	$isHalftime)
                empHrs=4
                hours="$( getWorking  $empHrs )"
					day=$(( day + 1))
										;;

    	*)
		empHrs=0 ;;
		esac
done

echo "Hours ====   $hours"
salary=$(( empRate * hours ))
echo $salary

