" vim: fdm=marker:fdl=0

set nocompatible " be iMproved, explicitly get out of vi-compatible mode

source ~/.vim/init.vim
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


" Load bundles settings {{{

" tagbar
source ~/.vim/b-tagbar.vim

" vim-airline
source ~/.vim/b-airline.vim

" NERDTree
source ~/.vim/b-nerdtree.vim

" syntastic
source ~/.vim/b-syntastic.vim

" neocomplete
source ~/.vim/b-neocomplete.vim

" vim-colortoggle
source ~/.vim/b-colortoggle.vim

" python-mode config
source ~/.vim/b-python-mode.vim

" unite config
source ~/.vim/b-unite.vim

" }}}
