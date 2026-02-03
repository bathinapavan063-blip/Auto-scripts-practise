#!/bin/bash
echo "Enter the age:"
read age

if [ $age -lt 40 ];
then
 echo "eligble for work"
else
 echo "not eligble for work"
fi
