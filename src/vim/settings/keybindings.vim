" Keybindings
" ===============================================

" Tab / Shift + Tab to switch between tabs
nmap <TAB> gt
nmap <S-TAB> gT

" Enable visual block mode with vv
nnoremap vv <C-v>

" " Change quit to quit all
" nnoremap :q :qa

" Ctrl + S to save files
nmap <c-s> :w<CR>
imap <c-s> <Esc>:w<CR>
imap <c-s> <Esc><c-s>

" Ctrl + Q to exit files
" It will not close if has files changed.
nmap <c-q> :q<CR>
imap <c-q> <Esc>:q<CR>
imap <c-q> <Esc><c-q>

" Ctrl + W to save and exit files
nmap <c-w> :x<CR>
imap <c-w> <Esc>:x<CR>
imap <c-w> <Esc><c-w>
