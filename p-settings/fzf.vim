set rtp+=/usr/local/opt/fzf
let g:fzf_nvim_statusline = 0 " disable statusline overwriting
if has('gui_macvim')
  let g:fzf_launcher = "~/.vim/bin/in_new_iterm %s"
endif
nnoremap \f :Files<CR>
nnoremap \s :Ag<CR>
