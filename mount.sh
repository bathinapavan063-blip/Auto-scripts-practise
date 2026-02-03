#!/bin/bash
for mount in / /boot /home
do
  df -h $mount
done
