#!/bin/bash
kernel_version=`uname -a|awk '{print $3}' | sed 's/[^0-9]*//g'`
kernel_version2=`uname -a|awk '{print $3}' | cut -f1 -d"-"`
target_kernel_version=41976
if [ $kernel_version -ge $target_kernel_version ]
then
	echo -e ""
	echo -e "================================================================================"
	echo -e "=== Test result kernel version==="
	echo "Kernel version is eq/bigger then 4.18" 
    echo "Kernel version is $kernel_version2" 
else
	echo -e ""
	echo -e "================================================================================"
	echo -e "=== Test result kernel version==="
    echo "ERROR Kernel version is less then $target_kernel_version"
    exit 1
fi