#!/bin/bash

# Node n
export N_PREFIX="$HOME/n"
[[ :$PATH: == *":$N_PREFIX/bin:"* ]] || PATH+=":$N_PREFIX/bin"

# Brew
# eval "$(/home/linuxbrew/.linuxbrew/bin/brew shellenv)"

# Disable Caps Lock
# setxkbmap -option caps:none
