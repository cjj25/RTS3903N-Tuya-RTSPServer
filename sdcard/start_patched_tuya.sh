#!/bin/sh

sleep 1m
# Create a mutex so we don't keep opening the file
FILE=/tmp/mutex
if [ -f "$FILE" ]; then
        exit 0
fi
touch /tmp/mutex

cd /mnt/sdcard/

# echo "Killing the existing Tuya Services"
killall ty_monitor.sh ty_wdt tycam

# echo "Starting watching dog to prevent reboot"
./watchdog.sh 2>&1 &

# echo "Starting patched binary"
./tycam &


