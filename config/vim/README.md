# dotbraga &bull; Vim

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
