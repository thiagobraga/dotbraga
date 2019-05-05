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

if [[ "${answer}" == 0 ]]; then
  sudo grub-reboot 1 && sudo reboot
  exit 1
fi
