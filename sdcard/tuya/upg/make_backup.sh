echo "############## Starting Firmware Dump ##############"

mkdir -p /mnt/sdcard/backup
cat /proc/mtd > /mnt/sdcard/backup/mtd.txt
df -h > /mnt/sdcard/backup/df.txt
ls -al > /mnt/sdcard/backup/ls.txt
mount > /mnt/sdcard/backup/mount.txt

alias dd="/mnt/sdcard/busybox dd"

dd if=/dev/mtdblock0 of=/mnt/sdcard/backup/mtdblock0.bin
dd if=/dev/mtdblock1 of=/mnt/sdcard/backup/mtdblock1.bin
dd if=/dev/mtdblock2 of=/mnt/sdcard/backup/mtdblock2.bin
dd if=/dev/mtdblock3 of=/mnt/sdcard/backup/mtdblock3.bin
dd if=/dev/mtdblock4 of=/mnt/sdcard/backup/mtdblock4.bin
dd if=/dev/mtdblock5 of=/mnt/sdcard/backup/mtdblock5.bin
dd if=/dev/mtdblock6 of=/mnt/sdcard/backup/mtdblock6.bin
dd if=/dev/mtdblock7 of=/mnt/sdcard/backup/mtdblock7.bin
dd if=/dev/mtdblock8 of=/mnt/sdcard/backup/mtdblock8.bin

#reboot


