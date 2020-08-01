#!/bin/bash
ip link add dummy0 type dummy >/dev/null
if [[ $? -eq 0 ]]; then
    PRIVILEGED=true
    # clean the dummy0 link
    ip link delete dummy0 >/dev/null
    echo echo -e "=== Test result container privileged mode==="
    echo privileged
    exit 1
else
	echo echo -e "=== Test result container privileged mode==="
    echo not privileged
    PRIVILEGED=false
fi
