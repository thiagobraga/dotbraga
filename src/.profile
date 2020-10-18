#!/bin/bash

export N_PREFIX="$HOME/n"
[[ :$PATH: == *":$N_PREFIX/bin:"* ]] || PATH+=":$N_PREFIX/bin"

eval $(/home/linuxbrew/.linuxbrew/bin/brew shellenv)
