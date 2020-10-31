#!/bin/bash
isPresent=1
PER_HOUR=20
FULLDAY_HOUR=8
PARTTIME_HOUR=8
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
