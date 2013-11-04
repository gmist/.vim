" vim: fdm=marker:fdl=0

set nocompatible " be iMproved, explicitly get out of vi-compatible mode

source ~/.vim/neobundle-init.vim
source ~/.vim/bundles.vim
source ~/.vim/settings.vim

" Spelling {{{
setlocal spell spelllang=
setlocal nospell
function ChangeSpellLang()
    if &spelllang =~ "en_us"
        setlocal spell spelllang=ru
        echo "spelllang: ru"
    elseif &spelllang =~ "ru"
        setlocal spell spelllang=
        setlocal nospell
        echo "spelllang: off"
    else
        setlocal spell spelllang=en_us
        echo "spelllang: en"
    endif
endfunc

" map spell on/off for English/Russian
map <F7> <Esc>:call ChangeSpellLang()<CR>
" }}}


" Tabsetting functions {{{
function! Fourtabs()
    set tabstop=4           " 4-space hard tabs
    set softtabstop=4       " 4-space soft tabs
    set shiftwidth=4        " 4-space indent
endfunction
command! -nargs=* Fourtabs call Fourtabs()

function! Threetabs()
    set tabstop=3
    set softtabstop=3
    set shiftwidth=3
endfunction
command! -nargs=* Threetabs call Threetabs()

function! Twotabs()
    set tabstop=2
    set softtabstop=2
    set shiftwidth=2
endfunction
command! -nargs=* Twotabs call Twotabs()
" Default to twotabs
Twotabs
" }}}


" setup vim-colortoggle plugin {{{
let g:light_colorscheme='pyte'
let g:dark_colorscheme='kellys'
let g:default_background_type="dark"
" }}}


" setup NERDTree plugin {{{
let NERDTreeChDirMode=2
let NERDTreeIgnore=['\.rbc$', '\~$', '\.pyc$', '\.db$', '\.sqlite$']
let NERDTreeShowBookmarks=1
nmap <silent> <F2> :NERDTreeToggle<CR>
imap <silent> <F2> :NERDTreeToggle<CR>
" }}}


" setup Neocomplete {{{

let g:neocomplete#enable_at_startup = 1
let g:neocomplete#enable_smart_case = 1
let g:neocomplete#enable_auto_select = 1
let g:neocomplete#enable_refresh_always = 1
let g:neocomplete#max_list = 30
let g:neocomplete#min_keyword_length = 1
let g:neocomplete#sources#syntax#min_keyword_length = 1
let g:neocomplete#data_directory = '~/.vim/tmp/neocomplete'

" }}}


" setup tagbar plugin {{{
" open tagbar using (right sidebar) using <F3>
nnoremap <silent> <F3> :TagbarToggle<CR>
" }}}


" setup vim-airline {{{
let g:airline_enable_fugitive=1
let g:airline_enable_syntastic=1
let g:airline_enable_bufferline=1
" }}}


" setup syntastic plugin {{{
let g:syntastic_error_symbol='✗'
let g:syntastic_warning_symbol='⚠'
let g:syntastic_style_error_symbol  = 'ϟ'
let g:syntastic_style_warning_symbol  = '≈'
let g:syntastic_python_checkers=['pylint']
let g:syntastic_ignore_files = ['\.py$']
" }}}


" python-mode config
source ~/.vim/python-mode.vim

" unite config
source ~/.vim/unite.vim

