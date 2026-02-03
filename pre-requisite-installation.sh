#!/bin/bash
echo "Enter the package_name:"
read package_name
echo "Enter the dir_name:"
read dir_name
echo "Enter the log_file_name:"
read log_file_name

echo "-------------------------------------------------------------------------"
echo "Install the latest package" $package_name
echo "-------------------------------------------------------------------------"
yum install $package_name -y

echo "-------------------------------------------------------------------------"
echo "Create directory for log  files with directory name" $dir_name
echo "-------------------------------------------------------------------------"
mkdir -p $dir_name

echo "-------------------------------------------------------------------------"
echo "Create log file in directory structure" 
echo "-------------------------------------------------------------------------"
cd $dir_name
touch $log_file_name

echo "-------------------------------------------------------------------------"
echo "Validate the package directory and log files"
echo "-------------------------------------------------------------------------"
rpm -qa | grep -i $package_name
echo "-------------------------------------------------------------------------"
ls -ld $dir_name
echo "-------------------------------------------------------------------------"
ls -lrt $dir_name
echo "-------------------------------------------------------------------------"
echo "-------------------------ALL ARE DONE !----------------------------------"
echo "-------------------------------------------------------------------------"
