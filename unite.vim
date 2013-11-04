" setup unite.vim {{{
set runtimepath^=~/.vim/bundle/vimproc
try
    call unite#filters#matcher_default#use(['matcher_fuzzy'])
catch
endtry
let g:unite_source_history_yank_enable = 1
" }}}

" menu prefix key Unite menus {{{
nmap [unite] <Nop>
nmap . [unite]
" }}}

" unite features {{{
nnoremap [unite]b :Unite -quick-match buffer<cr>
nnoremap [unite]t :Unite -quick-match tab<cr>
nnoremap [unite]f :Unite file_rec/async<cr>
nnoremap [unite]y :Unite history/yank<cr>
nnoremap [unite]g :Unite grep:.<cr>
nnoremap [unite]o :Unite outline<cr>
" }}}

" menus {{{
if !exists("g:unite_source_menu_menus")
  let g:unite_source_menu_menus = {}
endif

nnoremap <silent>[unite]m :Unite -silent -winheight=20 menu<cr>
" }}}

" buffers, tabs & windows menu {{{
let g:unite_source_menu_menus.windows = {
  \ 'description' : 'navigate by buffers, tabs & windows cmd .w',
  \}
let g:unite_source_menu_menus.windows.command_candidates = [
  \['-> buffers                                                 .b',
      \'Unite -quick-match buffer'],
  \['-> tabs                                                    .t',
      \'Unite tab'],
  \['-> windows                                                   ',
      \'Unite window'],
  \['-> new left window                                           ',
      \'Unite -start-insert -default-action=left file'],
  \['-> new right window                                          ',
      \'Unite -start-insert -default-action=right file'],
  \['-> new above window                                          ',
      \'Unite -start-insert -default-action=above file'],
  \['-> new below window                                          ',
      \'Unite -start-insert -default-action=below file'],
  \['-> resize windows                                       <C-e>',
      \'WinResizerStartResize'],
  \['-> close current window                                      ',
      \'close'],
  \['-> NerdTree                                                F2',
      \'NERDTreeToggle'],
  \['-> Taglist                                                 F3',
      \'TagbarToggle'],
  \]
nmap <silent>[unite]w :Unite -silent -start-insert menu:windows<CR>
" }}}

