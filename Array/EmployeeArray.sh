
function getWorkingHrs() {
random=$1
case $random in
	$ISFULLTIME)
			empHrs=8 ;;
	$ISHALFTIME)
			empHrs=4 ;;

    *)
			empHrs=0 ;;
esac
echo $empHrs
}

function calculation()
{
totalsalary=$(( $1 * $2 ))
echo $toralsalary
}


############ Main Method ############

#constant
ISFULLTIME=1
ISHALFTIME=0
WAGE=2000

#varible
hours=0
totalsalary=0
day=0
count=0
i=0
declare -A day

while [[ $hours -le 50 && $day -le 20 ]]
do
	random=$(( RANDOM % 3))
	day=$(( day+1 ))
	i=$(( i+1 ))
	emphours="$( getWorkingHrs $random )"
	hours=$(( hours + emphours ))
   totalsalary=$(( $hours * $WAGE ))
	day["day_$day"]=$totalsalary
	EmployeeWage[(( count++ ))]=$totalsalary
done

len=${#day[@]}
for (( i=0; i<$len; i++ ))
do
echo  "Day $i"  $'\t'   ${day["day_$i"]}
done


