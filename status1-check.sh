#!/bin/bash
pid=`ps -ef | grep -v grep | grep -i httpd | awk 'NR==1 { print $2 }' | wc -l`
if [ $pid==1 ];
then
 echo "HTTPD service is running"
else
  echo "HTTPD server is down"
  echo "Restart HTTPD service"
  systemctl restart httpd
  echo "HTTPD service started"
fi
