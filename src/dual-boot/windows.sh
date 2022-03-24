#!/bin/bash

# Grub will temporary change the default boot option
# and restore to the original after reboot.
win() {
  sudo grub-reboot "$(
    sudo grep -i '^menuentry.*Windows' /boot/grub/grub.cfg |
      head -n 1 |
      cut -d"'" -f4
  )"
  sudo reboot
}

win
