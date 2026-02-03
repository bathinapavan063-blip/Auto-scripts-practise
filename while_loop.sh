#!/bin/bash
i=10;
while [ $i -ge 1 ]
do
  echo "value of i=" $i
  i=`expr $i - 1`
done
