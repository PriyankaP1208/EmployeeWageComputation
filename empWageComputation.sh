#!/bin/bash
isPresent=1
PER_HOUR=20
FULLDAY_HOUR=8
PARTTIME_HOUR=8
WORKINGDAYS_PERMONTH=20
days=0
working_hr=0
empHr=0
T=$(($RANDOM%8+1))

echo "1. Employee Attendance 2.Daily Employee Wage 3.Part Time wage"
read n
case $n in 
	1)
		randomCheck=$((RANDOM%2 + 1 ))
		if [[ $isPresent -eq $randomCheck ]]
		then
  			echo "Employee is present"
		else
  			echo "Employee is not present"
		fi
	;;
	2)
		dailyWage=$(( $PER_HOUR * $FULLDAY_HOUR ))
		echo "Daily Employee Wage=$dailyWage"
	;;
	3)
		partTime=$(( $T * $PARTTIME_HOUR ))
		echo "For $T hours wages are: $partTime"
	;;
esac

monthlywage=$(( $PER_HOUR * $WORKINGDAYS_PERMONTH ))
echo "Monthly Wages = $monthlywage"
echo "Daily wages            Total wages   "
while [[ $days -lt 20  &&  $working_hr -lt 100 ]]
do
	empcheck=$(($RANDOM%2+1))
	case $empcheck in
	1)
		empHr=$(( $empHr + 8 ))
	;;
	2)
		empHr=$(( $empHr + 4 ))
	;;
	esac
salary=$(( $empHr * $PER_HOUR ))
total_sal=$(( $total_sal + $salary ))
((days++))
echo "$salary                      $total_sal"
done
