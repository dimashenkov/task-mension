#!/bin/bash
kernel_version=`uname -a|awk '{print $3}' | sed 's/[^0-9]*//g'`
kernel_version2=`uname -a|awk '{print $3}' | cut -f1 -d"-"`
if [ $kernel_version -ge 41976 ]
then
	echo echo -e "=== Test result kernel version==="
    echo "kernel version is $kernel_version2" 
else
	echo echo -e "=== Test result kernel version==="
    echo kernel version is less then 4.19.76
    exit 1
fi