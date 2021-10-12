#!/bin/bash

# Grub will temporary change the default boot option
# and restore to the original after reboot.
sudo grub-reboot "$(grep -e 'windows' /boot/grub/grub.cfg | grep -Eo '"(.*)"')"
sudo reboot
