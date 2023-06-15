#!/bin/zsh

# Dotbraga global variable
# ------------------------------------------------------------------------------
export DOTBRAGA="${HOME}/www/braga/dotbraga"

# Zsh theme
# ------------------------------------------------------------------------------
export ZSH_THEME='powerlevel10k/powerlevel10k'

# Zsh settings
# ------------------------------------------------------------------------------
export ZSH="${HOME}/.oh-my-zsh"
export ZSH_DISABLE_COMPFIX=true
export DISABLE_AUTO_UPDATE=true
export DISABLE_MAGIC_FUNCTIONS=true
export plugins=(docker docker-compose git zsh-autosuggestions zsh-syntax-highlighting)

setopt EXTENDED_HISTORY
setopt HIST_BEEP
setopt HIST_EXPIRE_DUPS_FIRST
setopt HIST_FIND_NO_DUPS
setopt HIST_IGNORE_ALL_DUPS
setopt HIST_IGNORE_DUPS
setopt HIST_IGNORE_SPACE
setopt HIST_SAVE_NO_DUPS
setopt NULL_GLOB

# Shell settings
# ------------------------------------------------------------------------------
export LANG='en_US.UTF-8'
export LANGUAGE='en_US.UTF-8'
export LC_ADDRESS='en_US.UTF-8'
export LC_ALL='en_US.UTF-8'
export LC_COLLATE='en_US.UTF-8'
export LC_CTYPE='en_US.UTF-8'
export LC_IDENTIFICATION='en_US.UTF-8'
export LC_MEASUREMENT='en_US.UTF-8'
export LC_MESSAGES='en_US.UTF-8'
export LC_MONETARY='en_US.UTF-8'
export LC_NAME='en_US.UTF-8'
export LC_NUMERIC='en_US.UTF-8'
export LC_PAPER='en_US.UTF-8'
export LC_TELEPHONE='en_US.UTF-8'
export LC_TIME='en_US.UTF-8'
export TERM='xterm-256color'
export EDITOR='/usr/bin/code'
export VISUAL='/usr/bin/code'

# Configure color overrides for terminal
# ------------------------------------------------------------------------------
[[ -f ~/.dircolors ]] && eval "$(dircolors -b ${HOME}/.dircolors)" &>/dev/null

# Source Oh My Zsh and theme settings
# ------------------------------------------------------------------------------
source "${ZSH}/oh-my-zsh.sh"
source "${HOME}/.p10k.zsh"

# Import .env and .aliases
# ------------------------------------------------------------------------------
[[ -e "${HOME}/.env" ]] && source "${HOME}/.env"
[[ -e "${HOME}/.aliases" ]] && source "${HOME}/.aliases"

# Import src/scripts in current shell
# ------------------------------------------------------------------------------
for file in $DOTBRAGA/src/scripts/*; do [[ -f $file ]] && source $file; done

# Ruby section
# ------------------------------------------------------------------------------
eval "$(rbenv init -)"
source "$(dirname "$(gem which colorls)")/tab_complete.sh"

# Load brew correctly
# ------------------------------------------------------------------------------
test -d ${HOME}/.linuxbrew && eval "$(~/.linuxbrew/bin/brew shellenv)"
test -d /home/linuxbrew/.linuxbrew && eval "$(/home/linuxbrew/.linuxbrew/bin/brew shellenv)"
test -r ${HOME}/.bash_profile && echo "eval \"\$($(brew --prefix)/bin/brew shellenv)\"" >> ${HOME}/.bash_profile
eval "$(/home/linuxbrew/.linuxbrew/bin/brew shellenv)"

# Node n
# ------------------------------------------------------------------------------
export N_PREFIX="${HOME}/n"

# Kubectl completion
# ------------------------------------------------------------------------------
source <(kubectl completion zsh)
alias k=kubectl
complete -o default -F __start_kubectl k

# OCI completion
# ------------------------------------------------------------------------------
[[ -e "$HOME/lib/oracle-cli/lib/python3.10/site-packages/oci_cli/bin/oci_autocomplete.sh" ]] && source "$HOME/lib/oracle-cli/lib/python3.10/site-packages/oci_cli/bin/oci_autocomplete.sh"
