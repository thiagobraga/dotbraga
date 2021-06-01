#!/bin/bash

# Grub will temporary change the default boot option
# and restore to the original after reboot.

# TODO: Detect Windows dynamically. It needs to filter submenus from list.
sudo grub-reboot "Windows 10 (em /dev/sda2)"
sudo reboot
