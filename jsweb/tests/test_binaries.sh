#!/bin/bash
lines=$(find / -perm /6000 -type f -exec ls -ld {} \; 2>/dev/null | wc -l)
if [ $lines -eq 0 ]; then
echo -e ""
echo -e "================================================================================"
echo -e "=== Test Binaries permissions==="
echo no Binaries with privileged permissions.
else
echo -e ""
echo -e "================================================================================"
echo -e "=== Test Binaries permissions==="
echo there is Binaries with privileged permissions!!!
exit 1
fi