#!/bin/sh

# Success counters
countOK="0"
countFail="0"

echo -e "================================================================================"
echo -e "=== Check application status"
statusCode=$(curl -s -o /dev/null -w "%{http_code}" http://jsweb-app:8088)
htmlContent=$(curl http://jsweb-app:8088)
statusTarget="200"
htmlTarget="Hello jsweb"

echo -e "Expected HTTP Status Code: $statusTarget"
echo -e "Expected HTML Content:     $htmlTarget"
echo -e "HTTP Status Code:          $statusCode"
echo -e "HTML Content:              $htmlContent"

if [ "$statusCode" == "$statusTarget" ] && [ "$htmlContent" == "$htmlTarget" ]; then
    echo -e "Test OK"
    countOK=$((countOK+1))
else
    echo -e "Test FAIL"
    countFail=$((countFail+1))
fi
echo -e ""

echo -e "================================================================================"
echo -e "=== Test results==="

echo -e "tests OK:   $countOK"
echo -e "tests FAIL: $countFail"

if [ "$countFail" -ge "1" ]; then
    exit 1
fi
