#!/bin/bash
arr=()
for f in /tmp/tests/*.sh; do  
  bash "$f" -H 
done
