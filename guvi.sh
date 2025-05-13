#!/bin/bash


URL="https://www.guvi.in"


HTTP_STATUS=$(curl -o /dev/null -s -w "%{http_code}" "$URL")


echo "HTTP Status Code: $HTTP_STATUS"


if [[ "$HTTP_STATUS" -ge 200 && "$HTTP_STATUS" -lt 300 ]]; then
    echo "Success"
else
    echo "Failure"
fi

