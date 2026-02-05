#!/bin/bash
BACKUP_DIR="/backup"
mkdir -p $BACKUP_DIR

for dir in /etc /var/log
do
 name=$(basename $dir)
 tar -czf $BACKUP_DIR/${name}.tar.gz  $dir
 echo "$dir backed up"
done
