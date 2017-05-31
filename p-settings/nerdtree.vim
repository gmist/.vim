map <F2> :NERDTreeToggle<CR>

let g:NERDTreeWinSize=32
let NERDTreeChDirMode=2
let NERDTreeIgnore=['\~$', '\.pyc$', '\.swp$']
let NERDCompactSexyComs=1
let NERDTreeMinimalUI=1

autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif

