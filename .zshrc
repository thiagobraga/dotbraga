# Ctrl + S hangs terminal. Disable it with this command.
stty -ixon

export ZSH="$HOME/.oh-my-zsh"

# Spaceship theme configuration
ZSH_THEME='spaceship'

SPACESHIP_DIR_SHOW=true
SPACESHIP_DIR_TRUNC=0
SPACESHIP_GIT_STATUS_COLOR='blue'
SPACESHIP_GIT_STATUS_SHOW=true

SPACESHIP_PROMPT_ORDER=(
  dir
  host
  git
  venv
  line_sep
  vi_mode
  jobs
  exit_code
  char
)

plugins=(zsh-autosuggestions docker-compose git)

source $ZSH/oh-my-zsh.sh

if [ -e "$HOME/.env" ];     then . "$HOME/.env";     fi
if [ -e "$HOME/.profile" ]; then . "$HOME/.profile"; fi
if [ -e "$HOME/.aliases" ]; then . "$HOME/.aliases"; fi
