map <F2> :NERDTreeToggle<CR>
map <F1> :NERDTreeToggle %<CR>

let g:NERDTreeWinSize=32
let NERDTreeChDirMode=2
let NERDTreeIgnore=['\~$', '\.pyc$', '\.swp$']
let NERDCompactSexyComs=1
let NERDTreeQuitOnOpen=1

autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif
