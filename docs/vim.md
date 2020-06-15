<h1 align="center">dotbraga • ViM</h1>

<p align="center">
  <b><a href="#features">Features</a></b> • 
  <b><a href="#installation">Installation</a></b> • 
  <b><a href="#screenshots">Screenshots</a></b> • 
  <b><a href="#wiki">Wiki</a></b>
</p>

This doc explains the installation process of Vim and plugins. After the installation process, the folders `autoload` and `plugged` will be created, containing cached files for loaded plugins.

## Installation

``` bash
./install vimrc
```

## Folder structure

The [install](../../install) script will create the symlinks with this structure:

``` bash
${HOME}
├── .vim
│   ├── basics.vim
│   ├── colors.vim
│   ├── keybindings.vim
│   └── plugins.vim
└── .vimrc
```

## Compile ViM

``` bash
VIM_PREFIX="$HOME"/www/oss/bin
VIM_SRC="$HOME"/www/oss/vim

mkdir -p "$VIM_PREFIX"

cd "$VIM_SRC"

sudo make distclean

./configure \
  --enable-cscope \
  --enable-gtk2-check \
  --enable-gui=auto \
  --enable-luainterp \
  --enable-multibyte \
  --enable-perlinterp \
  --enable-python3interp \
  --enable-rubyinterp \
  --with-compiledby="j.jith" \
  --with-features=huge \
  --with-python3-config-dir=$(python3-config --configdir) \
  --with-x \
  --prefix=${VIM_PREFIX}

make
sudo make install

sudo sh -c "
  update-alternatives --install /usr/bin/editor editor ${VIM_PREFIX}/vim 1;
  update-alternatives --set editor ${VIM_PREFIX}/vim;
  update-alternatives --install /usr/bin/vim vim ${VIM_PREFIX}/vim 1;
  update-alternatives --set vim ${VIM_PREFIX}/vim;
  update-alternatives --install /usr/bin/vi vi ${VIM_PREFIX}/vim 1;
  update-alternatives --set vi ${VIM_PREFIX}/vim;
  update-alternatives --install /usr/bin/gvim gvim ${VIM_PREFIX}/gvim 1;
  update-alternatives --set gvim ${VIM_PREFIX}/gvim
"
```

Fix for **Ubuntu 20.04**:
``` bash
sudo ln -sf \
  /lib/x86_64-linux-gnu/libperl.so.5.30 \
  /lib/x86_64-linux-gnu/libperl.so.5.28
```
