export ZSH="/Users/thiagobraga/.oh-my-zsh"

ZSH_THEME='spaceship'

# Spaceship theme configuration
if [[ $ZSH_THEME == 'spaceship' ]]; then
  SPACESHIP_DIR_SHOW=true
  SPACESHIP_DIR_TRUNC=0

  SPACESHIP_EXEC_TIME_SHOW=false
  SPACESHIP_GIT_STATUS_SHOW=false
  SPACESHIP_NODE_SHOW=false
  SPACESHIP_PACKAGE_SHOW=false
  SPACESHIP_PHP_SHOW=false
fi

plugins=(
  git
)

source $ZSH/oh-my-zsh.sh

if [ -e "$HOME/.profile" ]; then
  . "$HOME/.profile"
fi

if [ -e "$HOME/.aliases" ]; then
  . "$HOME/.aliases"
fi