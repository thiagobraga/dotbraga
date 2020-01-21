#!/bin/zsh

# TODO: It should be in profile, right?
export N_PREFIX="$HOME/n"
[[ :$PATH: == *":$N_PREFIX/bin:"* ]] || PATH+=":$N_PREFIX/bin"

# Sometimes Gnome crash its extensions, so this script
# check if user extensions are disabled, so enabled it.
# TODO: Move to a Ubuntu or Gnome specific file/branch
if gsettings get org.gnome.shell disable-user-extensions &>/dev/null; then
  gsettings set org.gnome.shell disable-user-extensions false
fi
