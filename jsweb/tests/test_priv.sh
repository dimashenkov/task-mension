#!/bin/bash
ip link add dummy0 type dummy >/dev/null
if [[ $? -eq 0 ]]; then
    PRIVILEGED=true
    # clean the dummy0 link
    ip link delete dummy0 >/dev/null
    echo -e ""
    echo -e "================================================================================"
    echo -e "=== Test result container privileged mode==="
    echo ERROR This container is in privileged mode !!!
    exit 1
else
	echo -e ""
	echo -e "================================================================================"
	echo -e "=== Test result container privileged mode==="
    echo This container is not in privileged mode
    PRIVILEGED=false
fi
