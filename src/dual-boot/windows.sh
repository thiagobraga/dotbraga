#!/bin/bash

# Grub will temporary change the default boot option
# and restore to the original after reboot.
sudo grub-reboot "$(grep -i '^menuentry "Windows' /boot/grub/grub.cfg | head -n 1 | cut -d"'" -f2)"
sudo reboot
