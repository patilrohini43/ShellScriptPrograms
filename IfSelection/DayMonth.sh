#!/bin/bash/ -x

read -p  "Enter day" day
read -p "Enter month" month

if  ((( $month == 3 && $day >= 20 && $day <= 31 ) || ( $month == 4 && $day >=  1 && $day <= 30 ) || ($month == 5 && $day >=  1 && $day <= 31) ||
     ($month == 6 && $day >=  1 && $day <= 20)));
then
echo "true"
else
echo "false"
fi

