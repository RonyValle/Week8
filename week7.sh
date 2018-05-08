#!/bin/bash
clear
#checking your run level
who -r
#looking at your init system
ls /etc/init
# list units
sudo systemctl list-units
#systemd configuration location
sudo systemctl -p UnitPath show
#systemctl list-dependencies
sudo systemctl list-dependencies
#identifying boot slowness, failed processes and warnings
sudo systemd-analyze critical-chain
#enabling sshd.services
systemctl enable ssh.services
#rebboting your computer
reboot runs shutdown -r now
