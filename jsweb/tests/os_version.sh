#!/bin/bash
os_version=`cat /etc/issue|awk '{print $3}'`
if [ $os_version -ge 9 ]
then
	echo -e ""
	echo -e "================================================================================"
	echo -e "=== Test result OS version==="
    echo "OS version is $os_version2" 
else
	echo -e ""
	echo -e "================================================================================"
	echo -e "=== Test result OSversion==="
    echo ERROR OS version is less then 9
    exit 1
fi