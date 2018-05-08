#!/bin/bash
clear
#kernel log sources
less /var/log/kern.log
#kernel boot parameters
cat /proc/cmdline
#opening the manual pages for grub-mkconfig
man grub-mkconfig
#opening the manual pages for grub-install
man grub-install
