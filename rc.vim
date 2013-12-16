" vim: fdm=marker:fdl=0

set nocompatible " be iMproved, explicitly get out of vi-compatible mode

source ~/.vim/init.vim
source ~/.vim/bundles.vim
source ~/.vim/settings.vim


" Load bundles settings {{{

for fpath in split(globpath('~/.vim/b-settings', '*.vim'), '\n')
  exe 'source' fpath
endfor

" }}}
