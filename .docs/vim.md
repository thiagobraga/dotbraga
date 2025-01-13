<h1>
  <img src="../images/icons/config-icon.png" width="24" /> <a href="../README.md"><b>dotbraga</b></a> / ViM
</h1>

This doc explains the installation process of Vim and plugins. After the installation process, the folders `autoload` and `plugged` will be created, containing cached files for loaded plugins.

<!-- TOC -->

- [Installation](#installation)
- [Folder structure](#folder-structure)
- [Compile ViM from source](#compile-vim-from-source)

<!-- /TOC -->

<br/>

## Installation

``` bash
./install vim
```

<br/>

## Folder structure

The [install](../../install) script will create the symlinks with this structure:

```
${HOME}
├── .vim
│   ├── plugins
│   │   ├── airline.vim
│   │   ├── nerdtree.vim
│   │   └── onedark_braga.vim
│   └── settings
│       ├── basics.vim
│       ├── colors.vim
│       ├── keybindings.vim
│       └── plugins.vim
└── .vimrc
```

<br/>

## Compile ViM from source

```bash
#!/bin/bash

# Install dependencies
sudo apt install -y \
  clang \
  libgtk-3-dev \
  libpython3-dev \
  libtool-bin \
  libxt-dev \
  make

# Get Vim latest version
VIM_SRC="$HOME"/www/oss/vim
cd "$VIM_SRC" || exit
git pull origin master

# Enable Python 3 interpreter
sed -i '/^#CONF_OPT_PYTHON3 = --enable-python3interp$/s/^#//g' src/Makefile

# Install Vim
make
make test
sudo make install

# Undo src/Makefile changes
git checkout src/Makefile
```