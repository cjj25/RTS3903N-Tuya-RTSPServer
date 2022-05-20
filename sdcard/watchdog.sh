#!/bin/sh
while [ true ]; do
    echo -n 1 > /dev/watchdog
    sleep 5s
    
done
