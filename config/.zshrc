#!/bin/bash
# shellcheck source=/dev/null

export ZSH="$HOME"/.oh-my-zsh

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

source "$ZSH"/oh-my-zsh.sh

# Configure color overrides for terminal
# -----------------------------------------------------
# TODO: Incluir .dircolors no install
eval 'dircolors ~/.dircolors' &>/dev/null

if [[ -f ~/.dircolors ]]; then
  eval "$(dircolors -b ~/.dircolors)"
elif [[ -f /etc/DIR_COLORS ]]; then
  eval "$(dircolors -b /etc/DIR_COLORS)"
fi

# Other imports
# -----------------------------------------------------
if [ -e "$HOME"/.env ]; then . "$HOME"/.env; fi
if [ -e "$HOME"/.profile ]; then . "$HOME"/.profile; fi
if [ -e "$HOME"/.aliases ]; then . "$HOME"/.aliases; fi

for FILE in "$HOME"/scripts/.*; do . "$FILE"; done &>/dev/null
