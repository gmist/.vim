" setup syntastic plugin {{{
let g:syntastic_error_symbol='✗'
let g:syntastic_warning_symbol='⚠'
let g:syntastic_style_error_symbol  = 'ϟ'
let g:syntastic_style_warning_symbol  = '≈'

" pylama settings
let g:syntastic_python_checkers=['pylama']
let g:syntastic_python_pylama_args='--ignore=E111,E121'
" }}}
