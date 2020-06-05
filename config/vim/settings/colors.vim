" Colors
"==============================================  =

if (has("termguicolors"))
  set termguicolors
endif

set background=dark
set signcolumn=yes

silent! syntax enable
set t_Co=256
let g:onedark_hide_endofbuffer=1
let g:onedark_termcolors=256
let g:airline_theme='onedark'
silent! colorscheme onedark

highlight CursorLineNr ctermfg=red
highlight EndOfBuffer ctermfg=black
highlight lineNr ctermfg=darkgray
highlight NonText ctermfg=magenta
highlight VertSplit cterm=NONE guibg=NONE

hi! Normal ctermbg=NONE guibg=NONE
hi! NonText ctermbg=NONE guibg=NONE
