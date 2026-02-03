#!/bin/bash
while ! systemctl is-active httpd
do
  echo "waiting for httpd..."
  sleep 5
done

echo "httpd is running"
