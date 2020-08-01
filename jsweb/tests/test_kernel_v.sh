#!/bin/bash
kernel_version=`uname -a|awk '{print $3}' | sed 's/[^0-9]*//g'`
kernel_version2=`uname -a|awk '{print $3}' | cut -f1 -d"-"`
if [ $kernel_version -ge 41976 ]
then
	echo -e ""
	echo -e "=== Test result kernel version==="
	echo "Kernel version is bigger then 4.18" 
    echo "Kernel version is $kernel_version2" 
else
	echo -e ""
	echo -e "=== Test result kernel version==="
    echo Kernel version is less then 4.19.76
    exit 1
fi