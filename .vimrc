set nocompatible                " Usa as definições do vim, não as do vi
set history=1000                " Define o tamanho do histórico de comandos do vim
set autoread                    " Recarrega o arquivo caso ele seja editado por um programa externo enquanto aberto

filetype plugin on              " Habilita o reconhecimento de arquivos
filetype indent on              " Habilita reconhecimento de identação

set mouse=a                     " Habilita o uso do mouse no vim para cliques e coisas do tipo
set paste                       " Habilita o colar

set backspace=eol,start,indent  " Configurando a tecla <Backspace> para o que ela tem que fazer
set whichwrap+=<,>,h,l

set number                      " Ativa a numeração das linhas
set ruler                       " Habilita a exibição da coluna atual
set tabstop=2                   " Fazer com que Tab represente 2 espaços

syntax enable                   " Habilita o syntax highlighting
set background=dark             " Define o background para dark
" let g:solarized_termcolors=256
" let g:solarized_termtrans=1
" colorscheme solarized           " Utiliza o tema solarized | https://github.com/altercation/vim-colors-solarized

set nolinebreak                 " Desativa a quebra de linha automática
set wrap                        " Permite a navegação dentro de uma mesma linha longa com j e k