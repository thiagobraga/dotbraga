#!/bin/sh

# Windows must be the second OS in the boot order.
# Grub will change temporary the default option
# and restore to the original after reboot.
sudo grub-reboot 1 && sudo reboot
