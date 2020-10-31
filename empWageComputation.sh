#!/bin/bash
isPresent=1
randomCheck=$((RANDOM%2 + 1 ))
if [[ $isPresent -eq $randomCheck ]]
then 
  echo "Employee is present"
else
  echo "Employee is not present"
fi
