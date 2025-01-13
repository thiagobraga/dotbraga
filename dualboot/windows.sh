#!/bin/bash

# For GRUB installations
# ------------------------------------------------------------------------------
#
# Grub will temporary change the default boot option
# and restore to the original after reboot.
#
# This only works for BIOS setup, not for UEFI.
win_grub() {
  sudo grub-reboot "$(
    sudo grep -i '^menuentry.*Windows' /boot/grub/grub.cfg |
      head -n 1 |
      cut -d"'" -f2
  )"
  sudo reboot
}

# For UEFI, I use efibootmgr
# ------------------------------------------------------------------------------
win() {
  # Find the boot entry ID for Windows.
  WIN_ID=$(sudo efibootmgr | grep -i "Windows" | grep -oP '(?<=Boot)\d{4}')

  # Define drive to be booted temporarily and restart.
  [[ -n ${WIN_ID} ]] && sudo efibootmgr --bootnext "${WIN_ID}" &>/dev/null && sudo reboot
}

win
