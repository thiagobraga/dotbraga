#!/bin/bash

# Grub will temporary change the default boot option
# and restore to the original after reboot.

# TODO: Detect Windows dynamically.
#       It needs to filter submenus from list.
sudo grub-reboot "$(
  grep -e '^menuentry' /boot/grub/grub.cfg |
    nl -v 0 |
    grep -e '--class windows' |
    awk '{ print $1 }'
)"
sudo reboot
