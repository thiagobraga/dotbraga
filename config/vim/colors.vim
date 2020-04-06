" Colors
"==============================================  =


if (has("termguicolors"))
  set termguicolors
endif

set background=dark
set signcolumn=yes

highlight CursorLineNr ctermfg=red
highlight EndOfBuffer ctermfg=black
highlight lineNr ctermfg=darkgray
highlight NonText ctermfg=magenta
highlight VertSplit cterm=NONE guibg=NONE
let g:airline_powerline_fonts=1
let g:airline#extensions#tabline#enabled=1
let g:airline#extensions#tabline#show_buffers=0
let g:airline#extensions#tabline#show_close_button=0

silent! syntax enable
set t_Co=256
let g:onedark_hide_endofbuffer=1
let g:onedark_termcolors=256
let g:airline_theme='onedark'
silent! colorscheme onedark
