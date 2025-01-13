" Keybindings
" ===============================================

" Tab / Shift + Tab to switch between tabs
nmap <TAB> gt
nmap <S-TAB> gT

" Enable visual block mode with vv
nmap vv <C-v>

" Ctrl + S to save files
" FIX: Insert mode not working!
nmap <C-S> :w<CR>
vmap <C-S> <Esc>:w<CR>
imap <C-S> <Esc><C-S>

" Ctrl + Q to exit files
" It will not close if has files changed.
nmap <C-Q> :q<CR>
imap <C-Q> <Esc>:q<CR>
imap <C-Q> <Esc><C-Q>

" Ctrl + B to toggle NERDTree easily
nmap <C-B> :NERDTreeToggle<CR>
