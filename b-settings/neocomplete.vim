let g:neocomplete#enable_at_startup = 1
let g:neocomplete#enable_prefetch = 1
let g:neocomplete#enable_smart_case = 1
let g:neocomplete#enable_auto_select = 1
let g:neocomplete#enable_refresh_always = 1
let g:neocomplete#enable_auto_close_preview = 0
let g:neocomplcache_enable_fuzzy_completion=1
let g:neocomplete#max_list = 30
let g:neocomplete#min_keyword_length = 4
let g:neocomplete#sources#syntax#min_keyword_length = 1
let g:neocomplete#use_vimproc = 1
set completeopt-=preview
let g:neocomplete#data_directory = '~/.vim/tmp/neocomplete'
let g:neocomplete#sources#tags#cache_limit_size = 99999999

imap <expr><TAB> neosnippet#expandable_or_jumpable() ?
\ "\<Plug>(neosnippet_expand_or_jump)"
\: pumvisible() ? "\<C-n>" : "\<TAB>"
smap <expr><TAB> neosnippet#expandable_or_jumpable() ?
\ "\<Plug>(neosnippet_expand_or_jump)"
\: "\<TAB>"

