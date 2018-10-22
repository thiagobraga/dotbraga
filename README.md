# Dotfiles

My dotfiles used in development.  

<p align="center">
  <img src="https://i.imgur.com/N5OuLtb.png" />
</p>

## Installation

```
git clone https://github.com/thiagobraga/dotfiles
cd dotfiles
. ./install

# Install zsh-autosuggestions
git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions
```

## Contents

- Terminator configurations
- Vi configurations
- zsh configurations with Spaceship theme configured
- zsh-autosuggestions
- Hyper configurations
- Composer on PATH
- npm on PATH
- "Windows" shortcut to restart in Windows for dual-boot systems

## Shortcuts

### Terminator

- Copy: `<Ctrl>` + `C`
- Paste: `<Ctrl>` + `V`
- New tab: `<Ctrl>` + `T`
- Close tab: `<Ctrl>` + `W`
- Split vertically: `<Ctrl>` + `D`
- Split horizontally: `<Ctrl>` + `<Shift>` + `D`

## TODO

- [ ] Create a CLI with [oclif](https://oclif.io/) to install tools like PHP, Composer, Docker...
