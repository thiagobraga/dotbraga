#!/bin/zsh

export N_PREFIX="$HOME/n"
[[ :$PATH: == *":$N_PREFIX/bin:"* ]] || PATH+=":$N_PREFIX/bin"

# Sometimes Gnome crash its extensions, so this script
# check if user extensions are disabled, so enabled it.
if gsettings get org.gnome.shell disable-user-extensions &>/dev/null; then
  gsettings set org.gnome.shell disable-user-extensions false
fi

if [ -e /usr/share/terminfo/x/xterm-256color ]; then
  export TERM='xterm-256color'
else
  export TERM='xterm-color'
fi
