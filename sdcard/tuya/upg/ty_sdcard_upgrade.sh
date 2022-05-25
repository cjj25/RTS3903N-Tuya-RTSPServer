#! /bin/sh

# Grab a backup of the firmware
if [ ! -f /mnt/sdcard/backup/mtdblock0.bin  ]; then
     /mnt/sdcard/tuya/upg/make_backup.sh 2>&1 &
fi

# Start telnet
#busybox telnetd -l /bin/sh  &

# Fork the patched tuya binary

/mnt/sdcard/start_patched_tuya.sh &
