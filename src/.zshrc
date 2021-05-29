#!/bin/bash

export ZSH="$HOME/.oh-my-zsh"
export ZSH_THEME='spaceship'
export ZSH_DISABLE_COMPFIX=true
export DISABLE_AUTO_UPDATE=true
export DISABLE_MAGIC_FUNCTIONS=true
export SPACESHIP_CHAR_SYMBOL=''
export SPACESHIP_DIR_SHOW=true
export SPACESHIP_DIR_TRUNC=0
export SPACESHIP_GIT_STATUS_SHOW=true
export SPACESHIP_GIT_STATUS_COLOR='blue'
export SPACESHIP_PROMPT_ORDER=(dir host git line_sep jobs char)

export plugins=(
  git
  docker
  docker-compose
  zsh-autosuggestions
  zsh-syntax-highlighting
)

source "$ZSH"/oh-my-zsh.sh

setopt EXTENDED_HISTORY
setopt HIST_BEEP
setopt HIST_EXPIRE_DUPS_FIRST
setopt HIST_FIND_NO_DUPS
setopt HIST_IGNORE_ALL_DUPS
setopt HIST_IGNORE_DUPS
setopt HIST_IGNORE_SPACE
setopt HIST_SAVE_NO_DUPS

# Import .env, .aliases and some useful scripts
# ------------------------------------------------------------------------------
if [ -e "$HOME/.env" ]; then source "$HOME/.env"; fi
if [ -e "$HOME/.aliases" ]; then source "$HOME/.aliases"; fi
if [ -e "$HOME/.profile" ]; then source "$HOME/.profile"; fi

scripts=($(find "$HOME/scripts" -type l))
for script in "$scripts[@]"; do source $script; done

# Eval section
# -----------------------------------------------------

# Configure color overrides for terminal
if [[ -f ~/.dircolors ]]; then
  eval "$(dircolors -b ~/.dircolors)" &>/dev/null
fi
