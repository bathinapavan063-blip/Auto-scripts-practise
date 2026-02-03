#!/bin/bash
for s in httpd sshd crond
do
  systemctl status $s
done
