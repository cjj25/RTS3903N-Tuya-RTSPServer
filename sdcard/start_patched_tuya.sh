#!/bin/sh

sleep 1m
# Create a mutex so we don't keep opening the file
FILE=/tmp/mutex
if [ -f "$FILE" ]; then
        exit 0
fi
touch /tmp/mutex

cd /mnt/sdcard/

# Killing the existing Tuya Services
killall ty_monitor.sh ty_wdt tycam

# Starting watching dog to prevent reboot
./watchdog.sh 2>&1 &

# Ensure tycam is always killed!
kill $(ps | grep tycam | awk '{ print $1 }')

# Starting patched binary
./tycam &


