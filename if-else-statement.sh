#!/bin/bash
echo "Enter the employee age :"
read age
if [ $age -lt 30 ];
then
  echo "Employee is eligible for working"
else
  echo "Employee is not eligible for working"
fi
