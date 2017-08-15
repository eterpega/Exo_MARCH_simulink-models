#!/bin/sh

response=$(echo "meas:curr?" | nc 169.254.0.2 8462)
if [ -n "$response" ]; then
   echo "PSU is responding"
   exit 0
else
   echo "PSU is not responding"
   exit 1
fi
