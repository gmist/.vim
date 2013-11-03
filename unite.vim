" setup unite.vim {{{
set runtimepath^=~/.vim/bundle/vimproc
try
    call unite#filters#matcher_default#use(['matcher_fuzzy'])
catch
endtry
let g:unite_source_history_yank_enable = 1
nnoremap <Leader>ub :Unite -quick-match buffer<cr>
nnoremap <Leader>uf :Unite file_rec/async<cr>
nnoremap <Leader>uy :Unite history/yank<cr>
nnoremap <Leader>ug :Unite grep:.<cr>
nnoremap <Leader>uo :Unite outline<cr>
" }}}

