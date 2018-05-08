#!/bin/bash
clear
#looking at the man pages for udevadm
man udevadm
#creating a 32 MB file with the ddd command
dd if=/dev/zero of=./32MB.img bs=1MB count=32
#looking at what was created 
hexdump ./32MB.img | less
#Using the mkfs to write a file system to it
mkfs -t ext4 ./32MB.img
#Maiking a moiunt point and mounting it.
mkdir /mnt/tmp
sudo mount ./32MB.img /mnt/tmp
mount; df -h
lsblk
#putting a hello world in the file
cd /tmp/tmp; ls
echo "Hello World" > ./hello.txt
#unmounting the image
sudo umount /mnt/tmp
#looking for the file with hexdump
hexdump --canonical ./32MB.img | less
