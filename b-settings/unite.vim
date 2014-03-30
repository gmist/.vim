" setup unite.vim {{{
set runtimepath^=~/.vim/bundle/vimproc
try
    call unite#filters#matcher_default#use(['matcher_fuzzy'])
catch
endtry
let g:unite_source_history_yank_enable = 1
let g:unite_candidate_icon="->"
" }}}


" menu prefix key Unite menus {{{
nmap [unite] <Nop>
nmap <LocalLeader> [unite]
" }}}


" unite features {{{
nnoremap [unite]b :Unite -quick-match buffer<cr>
nnoremap [unite]t :Unite -quick-match tab<cr>
nnoremap [unite]y :Unite history/yank<cr>
nnoremap [unite]o :Unite outline<cr>
" }}}


" menus {{{
if !exists("g:unite_source_menu_menus")
  let g:unite_source_menu_menus = {}
endif

nnoremap <silent>[unite]m :Unite -silent -winheight=20 menu<cr>
" }}}


" file search menu {{{
let g:unite_source_menu_menus.files = {
  \ 'description' : 'search files *[unite]f*',
\}
let g:unite_source_menu_menus.files.command_candidates = [
  \['recursive', 'Unite -start-insert file_rec/async'],
  \['grep .', 'Unite -no-quit grep:.'],
  \['find .', 'Unite find:.'],
  \['locate', 'Unite -start-insert locate'],
  \['grep', 'Unite -no-quit grep'],
  \['find', 'Unite find'],
  \['vimgrep', 'Unite vimgrep'],
\]
nnoremap <silent>[unite]f :Unite -silent -start-insert menu:files<CR>
" }}}


" buffers, tabs & windows menu {{{
let g:unite_source_menu_menus.windows = {
  \ 'description' : 'navigate by buffers, tabs & windows cmd *[unite]w*',
\}
let g:unite_source_menu_menus.windows.command_candidates = [
  \['buffers *[unite]b*', 'Unite -quick-match buffer'],
  \['tabs *[unite]t*', 'Unite tab'],
  \['windows', 'Unite window'],
  \['new left window', 'Unite -start-insert -default-action=left file'],
  \['new right window', 'Unite -start-insert -default-action=right file'],
  \['new above window', 'Unite -start-insert -default-action=above file'],
  \['new below window', 'Unite -start-insert -default-action=below file'],
  \['resize windows *<C-e>*', 'WinResizerStartResize'],
  \['close current window', 'close'],
  \['NerdTree *F2*', 'NERDTreeToggle'],
  \['Taglist *F3*', 'TagbarToggle'],
\]
nmap <silent>[unite]w :Unite -silent -start-insert menu:windows<cr>
" }}}


" file encoding menu {{{
let g:unite_source_menu_menus.encoding = {
    \ 'description' : 'select file encoding',
\}
let g:unite_source_menu_menus.encoding.command_candidates = [
  \['utf8', 'e ++enc=utf8'],
  \['cp1251', 'e ++enc=cp1251 ++ff=dos'],
  \['koi8-r', 'e ++enc=koi8-r ++ff=unix'],
  \['cp866', 'e ++enc=cp866 ++ff=dos'],
\]
nnoremap <silent>[unite]ce :Unite -silent -start-insert menu:encoding<cr>
" }}}


" Spelling {{{
let g:unite_source_menu_menus.spelling ={
  \'description': 'select spelling language',
\}
let g:unite_source_menu_menus.spelling.command_candidates = [
  \['en', 'setlocal spell spelllang=en_us'],
  \['ru', 'setlocal spell spelllang=ru'],
  \['off', 'setlocal spell spelllang= nospell'],
\]
nnoremap <silent>[unite]cs :Unite -silent -start-insert menu:spelling<cr>
" }}}


" Tabs width {{{
let g:unite_source_menu_menus.tabs = {
  \'description': 'select tabs width',
\}
let g:unite_source_menu_menus.tabs.command_candidates = [
  \['2', 'set ts=2 sts=2 sw=2 et'],
  \['4', 'set ts=4 sts=4 sw=4 et'],
  \['3', 'set ts=3 sts=3 sw=3 et'],
\]
nnoremap <silent>[unite]ct :Unite -silent -start-insert menu:tabs<cr>
" }}}

" Other settings {{{
let g:unite_source_menu_menus.other = {
  \'description': 'other settings',
\}
let g:unite_source_menu_menus.other.command_candidates = [
  \['wrap on', 'set wrap linebreak formatoptions+=t'],
  \['wrap off', 'set nowrap formatoptions-=t'],
\]
nnoremap <silent>[unite]co :Unite -silent -start-insert menu:other<cr>
" }}}

" Utils {{{
function ClearVimCache()
  let $f = @%
  bdelete
  silent !rm -rf ~/.vim/tmp
  silent !mkdir -p ~/.vim/tmp/backup
  silent !mkdir -p ~/.vim/tmp/neocomplete
  silent !mkdir -p ~/.vim/tmp/undo
  silent !mkdir -p ~/.vim/tmp/view
  if $f != ''
    e $f
  else
    ene
  endif
endfunction

let g:unite_source_menu_menus.utils = {
  \'description': 'utils',
\}
let g:unite_source_menu_menus.utils.command_candidates = [
  \['clear vim cache', 'call ClearVimCache()'],
\]
nnoremap <silent>[unite]u :Unite -silent -start-insert menu:utils<cr>
" }}}
