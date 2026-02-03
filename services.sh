#!/bin/bash
services="httpd sshd crond"
for s in $services
do
  systemctl is-active $s
done
