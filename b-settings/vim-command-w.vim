if has('mac')
  nmap <D-d> :CommandW<CR>
  imap <D-d> <ESC>:CommandW<CR>
else
  nmap <C-d> :CommandW<CR>
  imap <C-d> <ESC>:CommandW<CR>
endif

