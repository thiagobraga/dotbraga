#!/bin/bash

export ZSH="$HOME/.oh-my-zsh"

export plugins=(
  git
  docker
  docker-compose
  zsh-autosuggestions
  zsh-syntax-highlighting
)

export ZSH_THEME='spaceship'
export ZSH_DISABLE_COMPFIX=true
export DISABLE_AUTO_UPDATE=true
export DISABLE_MAGIC_FUNCTIONS=true

export SPACESHIP_CHAR_SYMBOL=''
export SPACESHIP_DIR_SHOW=true
export SPACESHIP_DIR_TRUNC=0
export SPACESHIP_GIT_STATUS_SHOW=true
export SPACESHIP_GIT_STATUS_COLOR='blue'
export SPACESHIP_PROMPT_ORDER=(dir host git venv line_sep jobs char)

setopt EXTENDED_HISTORY
setopt HIST_EXPIRE_DUPS_FIRST
setopt HIST_IGNORE_DUPS
setopt HIST_IGNORE_ALL_DUPS
setopt HIST_IGNORE_SPACE
setopt HIST_FIND_NO_DUPS
setopt HIST_SAVE_NO_DUPS
setopt HIST_BEEP

source "$ZSH"/oh-my-zsh.sh

# Other imports
# -----------------------------------------------------
if [ -e "$HOME/.env" ]; then source "$HOME/.env"; fi
if [ -e "$HOME/.profile" ]; then source "$HOME/.profile"; fi
if [ -e "$HOME/.aliases" ]; then source "$HOME/.aliases"; fi
if [ -e "$HOME/scripts/custom/index" ]; then source "$HOME/scripts/custom/index"; fi

export N_PREFIX="$HOME/n"

# Eval section
# -----------------------------------------------------

# Ruby
eval "$(rbenv init -)" &>/dev/null

# Configure color overrides for terminal
if [[ -f ~/.dircolors ]]; then
  eval "$(dircolors -b ~/.dircolors)" &>/dev/null
fi
