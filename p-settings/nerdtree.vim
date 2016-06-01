map <F2> :NERDTreeToggle<CR>
let g:NERDTreeWinSize=35

autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif
