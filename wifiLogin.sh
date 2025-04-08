#!/bin/bash

USERNAME=""
PSSWD=""
LOGIN_URL="http://172.16.16.16:8090/login.xml"

curl "$LOGIN_URL" \
  -H "Accept: */*" \
  -H "Accept-Language: en-US,en;q=0.9" \
  -H "Connection: keep-alive" \
  -H "Content-Type: application/x-www-form-urlencoded" \
  -H "Origin: http://172.16.16.16:8090" \
  -H "Referer: http://172.16.16.16:8090/httpclient.html" \
  -H "User-Agent: Mozilla/5.0 (Linux; Arch Linux) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/132.0.0.0 Safari/537.36" \
  --data-raw "mode=191&username=$USERNAME&password=$PSSWD&a=$(date +%s%3N)&producttype=0" \
  --insecure

echo "done ig"
