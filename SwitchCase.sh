#!/bin/bash -x
isFullTime=1;
isPartTime=2;
TotalEmployeeSalary=0;
numberOfWorkingDays=50;
employeeRatePerHour=30;
for (( day=1; day<=numberOfWorkingDays; day++ ))
do
        employeeCheck=$((RANDOM%3));
                case $employeeCheck in
                        $isPartTime)
                                employeeWorkingHours=5
                                ;;
                        $isFullTime)
                                employeeWorkinHours=10
                                ;;
                        *)
                        employeeHours=0
                                ;;
                esac
salary=$(($employeeWorkingHours * $employeeRatePerHour));
totalSalary=$(($totalSalary + $salary));
done

