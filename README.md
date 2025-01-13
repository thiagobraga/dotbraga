<p align="center">
  <img src="./images/icons/config-icon.png" width="128" />
</p>

<h1 align="center">dotbraga</h1>

<p align="center">
  My dotfiles<br>
  <a href="https://raw.githubusercontent.com/thiagobraga/todoist-userstyles/master/theme.user.css"><img src="https://img.shields.io/badge/version-1.5.0-929faf.svg" align="center" alt="Version 1.5.0"></a>
</p>

<p align="center">
  <b><a href="#features">Features</a></b> ·
  <b><a href="#installation">Installation</a></b> ·
  <b><a href="#docs">Docs</a></b> ·
  <b><a href="#screenshots">Screenshots</a></b>
</p>

<p align="center">
  <img src="./images/screenshots/dotbraga_ubuntu_2022-08-31_00-30-57.png" width="600" />
</p>

<br>

## Features

<br>

### [Oh My Zsh](https://ohmyz.sh)  

✨ [zsh-autosuggestions](https://github.com/zsh-users/zsh-autosuggestions)  
✨ [zsh-syntax-highlighting](https://github.com/zsh-users/zsh-syntax-highlighting)  
~~✨ [Spaceship Theme](https://denysdovhan.com/spaceship-prompt)~~  
✨ Powerlevel10k  

<br>

### [VIM · Vi IMproved](https://www.vim.org)  

✨ [CtrlP](https://kien.github.io/ctrlp.vim)  
✨ [NERDtree](https://github.com/preservim/nerdtree)  
✨ [vim-airline](https://github.com/vim-airline/vim-airline)  
💻 _One Dark theme [wip]_  
💻 _Compiled from latest version on Github [wip]_  

<br>

### [Aliases](./docs/aliases.md)  

Many of them inspired on Oh My Zsh aliases  
✨ [apt](./docs/aliases.md#apt)  
✨ [docker](./docs/aliases.md#docker)  
✨ [docker-compose](./docs/aliases.md#docker-compose)  
✨ [git](./docs/aliases.md#git)  
✨ [yarn](./docs/aliases.md#yarn)  

<br>

### [Terminator](./docs/terminator.md)  

✨ Beautiful semi-transparent [Nord](https://www.nordtheme.com) theme. See [**screenshots**](#screenshots) 📷  
✨ [Improved keyboard shortcuts](./docs/terminator.md#color-palette)

<br>

### ["Restart to Windows" shortcut](./src/dual-boot/windows.sh)

Automates the restart process for Dual Boot systems  
✨ Detects Windows on GRUB list  
✨ Restart system to that detected OS  

<br>

## Installation

<br>

``` sh
git clone https://github.com/thiagobraga/dotbraga
cd dotbraga
sudo ln -sfn $(pwd)/dotbraga /usr/local/bin/dot
sudo ln -sfn $(pwd)/dotbraga /usr/local/bin/dotbraga
```

And the script is able to be used as `dot` or `dotbraga` globally. It accepts some params. Here's a overview of the usage:

``` sh
dot           # Install everything
dot --all     # Install everything
dot ohmyzsh   # Install only Oh My Zsh
dot vimrc     # Install Vim and its settings
```

See the [dotbraga](./dotbraga) script to see all the possibilities. You can hit `dot -h` or `dot --help` to get help from the script.

<br>

## Docs

<br>

- [**Aliases**](./docs/aliases.md)
- [**Terminator**](./docs/terminator.md)
- [**ViM**](./docs/vim.md)

<br>

## Screenshots

<br>  

<img src="./images/screenshots/dotbraga_terminator_2020-04-06_00.21.png" width="420" />

<img src="./images/screenshots/dotbraga_macos_2020-04-07_13.53.png" width="420" />

<img src="./images/screenshots/dotbraga_ubuntu_2020-04-06_00.18.png" width="420" />
