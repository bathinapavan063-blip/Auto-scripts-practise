#!/bin/bash
until systemctl is-active httpd
do
  echo "service not running"
  sleep 5
done
