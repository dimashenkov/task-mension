#!/bin/bash
CONTAINER_NAME=$1
if [[ $(docker inspect --format='{{.HostConfig.Privileged}}' $CONTAINER_NAME) == "false" ]]; then
    echo not privileged
else
    echo privileged
fi
