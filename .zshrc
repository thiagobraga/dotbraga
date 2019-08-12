export ZSH="$HOME/.oh-my-zsh"

ZSH_THEME='spaceship'
SPACESHIP_CHAR_SYMBOL=''
SPACESHIP_DIR_SHOW=true
SPACESHIP_DIR_TRUNC=0
SPACESHIP_GIT_STATUS_COLOR='blue'
SPACESHIP_GIT_STATUS_SHOW=true
SPACESHIP_PROMPT_ORDER=(dir host git venv line_sep jobs char)

plugins=(git zsh-autosuggestions zsh-syntax-highlighting)

source $ZSH/oh-my-zsh.sh

if [ -e "$HOME/.env" ];     then . "$HOME/.env";     fi
if [ -e "$HOME/.profile" ]; then . "$HOME/.profile"; fi
if [ -e "$HOME/.aliases" ]; then . "$HOME/.aliases"; fi
if [ -e "$HOME/.custom" ];  then . "$HOME/.custom";  fi

export PATH="$HOME/.yarn/bin:$HOME/.config/yarn/global/node_modules/.bin:$PATH"
