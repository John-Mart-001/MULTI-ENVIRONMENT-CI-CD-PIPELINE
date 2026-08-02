#!/bin/bash

URL=$1

echo "Checking: $URL"

STATUS=$(curl -o /dev/null -s -w "%{http_code}" "$URL")

if [ "$STATUS" -eq 200 ]; then
    echo "Health check passed."
    exit 0
else
    echo "Health check failed. HTTP Status: $STATUS"
    exit 1
fi
