#!/bin/bash

export N_PREFIX="$HOME/n"
[[ :$PATH: == *":$N_PREFIX/bin:"* ]] || PATH+=":$N_PREFIX/bin"

# Use 256 colors for terminals
export TERM='xterm-256color'
