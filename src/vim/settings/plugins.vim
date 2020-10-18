" Plugins
" ===============================================
" TODO:  Document all the plugins used

if empty(glob('~/.vim/autoload/plug.vim'))
  silent !curl -sfLo ~/.vim/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

call plug#begin('~/.vim/plugged')
Plug 'airblade/vim-gitgutter'
Plug 'ctrlpvim/ctrlp.vim'
Plug 'editorconfig/editorconfig-vim'
Plug 'ervandew/supertab'
Plug 'joshdick/onedark.vim'
Plug 'junegunn/fzf'
Plug 'junegunn/vim-easy-align'
Plug 'mattn/emmet-vim'
Plug 'scrooloose/nerdtree'
Plug 'sheerun/vim-polyglot'
Plug 'SirVer/ultisnips' | Plug 'honza/vim-snippets'
Plug 'tomasiser/vim-code-dark'
Plug 'tpope/vim-commentary'
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-surround'
Plug 'vim-airline/vim-airline-themes'
Plug 'vim-airline/vim-airline'
Plug 'vim-scripts/matchit.zip'
call plug#end()

let g:ctrlp_custom_ignore = 'node_modules\|DS_Store\|git'
let mapleader = ","

source ~/.vim/plugins/airline.vim
source ~/.vim/plugins/nerdtree.vim
