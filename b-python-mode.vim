" setup python-mode plugin {{{

" documentation
let g:pymode_doc = 0 
let g:pymode_doc_key = '<localleader>k'
let g:pydoc = 'pydoc'

" syntax highlighting
let g:pymode_syntax = 1
let g:pymode_syntax_all = 1
let g:pymode_syntax_builtin_objs = 1
let g:pymode_syntax_print_as_function = 0
let g:pymode_syntax_space_errors = 0

let g:pymode_run = 0  " disable run script
let g:pymode_breakpoint = 0 " disable breakpoints plugin

let g:pymode_utils_whitespaces = 1
let g:pymode_virtualenv = 1
let g:pymode_folding = 1
let g:pymode_motion = 1

" Linting
let g:pymode_lint_checker = "pylama,pyflakes,pep8,mccabe"
let g:pymode_lint = 1
let g:pymode_lint_cwindow = 0

" ident and fold
let g:pymode_options_indent = 0
let g:pymode_options_fold = 0
let g:pymode_options_other = 0

" PyRope autocomplete
let g:pymode_rope = 1
let g:pymode_rope_global_prefix = '<localleader>R'
let g:pymode_rope_local_prefix = '<localleader>r'
let g:pymode_rope_auto_project = 1
let g:pymode_rope_enable_autoimport = 1
let g:pymode_rope_autoimport_generate = 1
let g:pymode_rope_autoimport_underlineds = 0
let g:pymode_rope_codeassist_maxfixes = 10
let g:pymode_rope_sorted_completions = 1
let g:pymode_rope_extended_complete = 1
let g:pymode_rope_autoimport_modules = ["os", "shutil", "datetime"]
let g:pymode_rope_confirm_saving = 1
let g:pymode_rope_vim_completion = 1
let g:pymode_rope_guess_project = 0
let g:pymode_rope_goto_def_newwin = 0
let g:pymode_rope_always_show_complete_menu = 1
" }}}


" jedi-vim plugin {{{
let g:jedi#popup_select_first = 0
let g:jedi#popup_on_dot = 0
" }}}

