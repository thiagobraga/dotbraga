#!/bin/bash

# Grub will change temporary the default option
# and restore to the original after reboot.
SO='windows'
ID=$(
  grep -e '^menuentry' /boot/grub/grub.cfg |
    grep -e '--class os' |
    nl -v 0 |
    grep -i $SO |
    awk '{ print $1 }'
)
sudo grub-reboot "$ID"
sudo reboot
