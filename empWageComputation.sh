#!/bin/bash
isPresent=1
PER_HOUR=20
FULLDAY_HOUR=8
PARTTIME_HOUR=8
randomCheck=$((RANDOM%2 + 1 ))
T=$(($RANDOM%8+1))
if [[ $isPresent -eq $randomCheck ]]
then 
  echo "Employee is present"
else
  echo "Employee is not present"
fi
dailyWage=$(( $PER_HOUR * $FULLDAY_HOUR ))
echo "Daily Employee Wage=$dailyWage"
partTime=$(( $T * $PARTTIME_HOUR ))
echo "For $T hours wages are: $partTime"
