# dotbraga • ViM

Open `vi` to first install the plugins, then restart vi and all the configurations will be applied. After that, the folders `autoload` and `plugged` will be created, containing cached files for loaded plugins.

## Installation

``` sh
./install vimrc
```

## Folder structure

The [install](../../install) script will create the symlinks with this structure:

``` sh
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
VIM_PREFIX="$HOME"/www/oss/bin/vim

./configure \
  --enable-256-color \
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
  --with-python3-config-dir=/usr/lib/python3.8/config-3.8m-x86_64-linux-gnu \
  --with-x \
  --prefix=${VIM_PREFIX}

sudo sh -c "
  update-alternatives --install /usr/bin/editor editor ${VIM_PREFIX}/bin/vim 1;
  update-alternatives --set editor ${VIM_PREFIX}/bin/vim;
  update-alternatives --install /usr/bin/vim vim ${VIM_PREFIX}/bin/vim 1;
  update-alternatives --set vim ${VIM_PREFIX}/bin/vim;
  update-alternatives --install /usr/bin/vi vi ${VIM_PREFIX}/bin/vim 1;
  update-alternatives --set vi ${VIM_PREFIX}/bin/vim;
  update-alternatives --install /usr/bin/gvim gvim ${VIM_PREFIX}/bin/gvim 1;
  update-alternatives --set gvim ${VIM_PREFIX}/bin/gvim
"
```

For Ubuntu 20.04:
``` bash
sudo ln -sf \
  /lib/x86_64-linux-gnu/libperl.so.5.30 \
  /lib/x86_64-linux-gnu/libperl.so.5.28
```
