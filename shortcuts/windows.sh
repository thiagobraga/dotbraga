#!/bin/bash

# Windows must be the second OS in the boot order.
# Grub will change temporary the default option
# and restore to the original after reboot.
zenity \
  --question \
  --no-wrap \
  --icon-name=system-reboot \
  --text="Are you sure you want to restart to Windows?"

answer=$?
SO='windows'

if [[ "${answer}" == 0 ]]; then
  ID=`grep -e '^menuentry' /boot/grub/grub.cfg | \
    grep -v generic | \
    grep -e '--class os' | \
    nl | grep -i ${SO} | \
    awk '{ print $1 }'`
  echo ${ID}
  sudo grub-reboot ${ID}
  sudo reboot
  exit 1
fi
