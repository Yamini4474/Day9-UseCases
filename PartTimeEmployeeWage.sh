#!/bin/bash -x
isPartTime=1;
isfullTime=2;
randomCheck=$((RANDOM%3));
if [ $isPartTime -eq $randomCheck ]
then
        workingHour=4;
        EmployeeRatePerHour=50;
elif [ $isfullTime -eq $randomCheck ]
then
        workingHour=8;
        EmployeeRatePerHour=100;
else
        workingHour=0;
fi
salary=$(($workingHour * $EmployeeRatePerHour));
echo $salary;
