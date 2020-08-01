#!/bin/bash
arr=()
for f in /tmp/tests/test*; do  
  bash "$f" -H 
done
