#!/bin/bash

# URL to be tested - replace this with the URL of your web application
URL="http://104.155.177.167/"


# Number of requests to send
REQUESTS=100

# Loop to send the requests
for ((i=1; i<=REQUESTS; i++))
do
  curl -s -o /dev/null -w "%{http_code}" "$URL"
done

echo "Stress test completed."
