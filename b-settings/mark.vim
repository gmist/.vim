if !hasmapto('<Plug>MarkSet', 'n')
  nmap <unique> <silent> <Leader>mm <Plug>MarkSet
endif
if !hasmapto('<Plug>MarkSet', 'v')
  vmap <unique> <silent> <Leader>mm <Plug>MarkSet
endif
if !hasmapto('<Plug>MarkRegex', 'n')
  nmap <unique> <silent> <Leader>mr <Plug>MarkRegex
endif
if !hasmapto('<Plug>MarkRegex', 'v')
  vmap <unique> <silent> <Leader>mr <Plug>MarkRegex
endif
if !hasmapto('<Plug>MarkClear', 'n')
  nmap <unique> <silent> <Leader>mn <Plug>MarkClear
endif

