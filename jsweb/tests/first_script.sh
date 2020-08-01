#!/bin/bash
errors=()
for f in /tmp/tests/test*; do  
  bash "$f" -H
  if [ $? -eq 0 ]; then
      echo OK
  else
      errors+=("$f")
  fi 
done

if [ ${#errors[@]} -eq 0 ]; then
    echo "No errors, hooray"
else
    echo "Oops, something went wrong..."
fi