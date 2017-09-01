#!/bin/sh
# Make sure you replace the API and/or APP key below
# with the ones for your account

DEVICE=$(ls /sys/bus/w1/devices|grep -v bus_master)
currenttime=$(date +%s)
T=$(echo "scale=1; $(cat /sys/bus/w1/devices/${DEVICE}/w1_slave|tail -1|cut -d= -f2) / 1000.0 * 1.8 + 32" | bc -l)

curl  -X PUT -d ${T} \
https://devops-temperature.firebaseio.com/rest/$(date +%s).json

