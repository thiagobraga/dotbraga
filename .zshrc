export ZSH="$HOME/.oh-my-zsh"

ZSH_THEME='spaceship'
SPACESHIP_CHAR_SYMBOL=''
SPACESHIP_DIR_SHOW=true
SPACESHIP_DIR_TRUNC=0
SPACESHIP_GIT_STATUS_COLOR='blue'
SPACESHIP_GIT_STATUS_SHOW=true
SPACESHIP_PROMPT_ORDER=(dir host git venv line_sep jobs char)
DISABLE_AUTO_UPDATE=true
ZSH_DISABLE_COMPFIX=true

plugins=(
  git
  docker
  docker-compose
  zsh-autosuggestions
  zsh-syntax-highlighting
)

source $ZSH/oh-my-zsh.sh

# This speeds up pasting w/ autosuggest
# https://github.com/zsh-users/zsh-autosuggestions/issues/238
pasteinit() {
  OLD_SELF_INSERT=${${(s.:.)widgets[self-insert]}[2,3]}
  zle -N self-insert url-quote-magic
}

pastefinish() {
  zle -N self-insert $OLD_SELF_INSERT
}

zstyle :bracketed-paste-magic paste-init pasteinit
zstyle :bracketed-paste-magic paste-finish pastefinish

# Sometimes Gnome crash its extensions, so this script
# check if user extensions are disabled, so enabled it.
# TODO: Move to a Ubuntu or Gnome specific file/branch
if gsettings get org.gnome.shell disable-user-extensions &>/dev/null; then
  gsettings set org.gnome.shell disable-user-extensions false
fi

if [ -e "$HOME/.env" ];     then . "$HOME/.env";     fi
if [ -e "$HOME/.profile" ]; then . "$HOME/.profile"; fi
if [ -e "$HOME/.aliases" ]; then . "$HOME/.aliases"; fi
if [ -e "$HOME/.custom" ];  then . "$HOME/.custom";  fi
