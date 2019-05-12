<h1 align="center">Dotfiles</h1>

<p align="center">My dotfiles used in development</p>

<p align="center">
  <img src="https://i.imgur.com/f9mqu0u.png" />
</p>

## Installation

``` sh
git clone https://github.com/thiagobraga/dotfiles
cd dotfiles
# Creating a better installation method
# . ./install
```

## Contents

- Terminator configurations
- Vi configurations
- zsh configurations with Spaceship theme configured and zsh-autosuggestions
- Hyper configurations
- Composer on PATH
- npm on PATH
- "Restart to Windows" shortcut for dual-boot systems

## Shortcuts

### Terminator

- Copy: <kbd>Ctrl</kbd> + <kbd>C</kbd>
- Paste: <kbd>Ctrl</kbd> + <kbd>V</kbd>
- New tab: <kbd>Ctrl</kbd> + <kbd>T</kbd>
- Close tab: <kbd>Ctrl</kbd> + <kbd>W</kbd>
- Split vertically: <kbd>Ctrl</kbd> + <kbd>D</kbd>
- Split horizontally: <kbd>Ctrl</kbd> + <kbd>Shift</kbd> + <kbd>D</kbd>

## ViM

### TODO

- [ ] Improve this section

```
"set nocompatible                " Usa as definições do vim, não as do vi
"set history=1000                " Define o tamanho do histórico de comandos do vim
"set autoread                    " Recarrega o arquivo caso ele seja editado por um programa externo enquanto aberto

"filetype plugin on              " Habilita o reconhecimento de arquivos
"filetype indent on              " Habilita reconhecimento de identação

"set mouse=a                     " Habilita o uso do mouse no vim para cliques e coisas do tipo
"set paste                       " Habilita o colar

"set backspace=eol,start,indent  " Configurando a tecla <Backspace> para o que ela tem que fazer
"set whichwrap+=<,>,h,l

"set number                      " Ativa a numeração das linhas
"set ruler                       " Habilita a exibição da coluna atual
"set tabstop=2                   " Fazer com que Tab represente 2 espaços

"syntax enable                   " Habilita o syntax highlighting
"set background=dark             " Define o background para dark
" let g:solarized_termcolors=256
" let g:solarized_termtrans=1
" colorscheme solarized           " Utiliza o tema solarized | https://github.com/altercation/vim-colors-solarized

"set nolinebreak                 " Desativa a quebra de linha automática
"set wrap                        " Permite a navegação dentro de uma mesma linha longa com j e k
```
