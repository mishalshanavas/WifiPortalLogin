#!/bin/bash

LOGIN_URL="http://172.16.16.16:8090/login.xml"

curl '$LOGIN_URL' \
  -X POST \
  -H 'User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:137.0) Gecko/20100101 Firefox/137.0' \
  -H 'Accept: */*' \
  -H 'Accept-Language: en-US,en;q=0.5' \
  -H 'Accept-Encoding: gzip, deflate' \
  -H 'Content-Type: application/x-www-form-urlencoded' \
  -H 'Origin: http://172.16.16.16:8090' \
  -H 'Referer: http://172.16.16.16:8090/httpclient.html' \
  --data-raw 'mode=193&username=tink&a='"$(date +%s%3N)"'&producttype=0'

