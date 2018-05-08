#!/bin/bash

clear
# sending a sentence to the dev/null directory.
echo this is going nowhere > dev/null
#listing the block id
blkid
#listing the block devices in your computer
lsblk
#using grep to list block devices
ls -l /dev /dev/mapper | grep '^b'
#checking for an sd in the dmesg using grep
dmesg | grep sd
