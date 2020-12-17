#!/bin/bash
isPresent=1
empHr=8
empRateHr=50
totalSal=0
for(( day=0; day<20; day++ ))
do
  random=$(($RANDOM%2))
  if [ $random -eq $isPresent ]
  then
    echo "Employee is Present at day "$day
    totalSal=$(( $totalSal + $(( $empHr * $empRateHr ))  ))
  fi
done
echo "Total Salary = "$totalSal

