" Unite plugins {{{

" asynchronously run commands in Unite
NeoBundle 'Shougo/vimproc.vim', {
\ 'build' : {
\     'windows' : 'make -f make_mingw32.mak',
\     'cygwin' : 'make -f make_cygwin.mak',
\     'mac' : 'make -f make_mac.mak',
\     'unix' : 'make -f make_unix.mak',
\    },
\ }

" search and display information from arbitrary sources like files, buffers, etc
NeoBundle 'Shougo/unite.vim'

" provides your Vim's buffer with the outline view
NeoBundleLazy 'Shougo/unite-outline', {'autoload': {'unite_sources': 'outline'}}
" }}}


" Tools plugins {{{
" Allows one to edit a file with prevledges from an unprivledged session.
NeoBundle 'vim-scripts/sudo.vim'

" A start screen showing recently used files and sessions
NeoBundle 'mhinz/vim-startify'

" lean & mean statusline for vim that's light as air
NeoBundle 'bling/vim-airline'

" File explorer
NeoBundleLazy 'Shougo/vimfiler', {'autoload' : { 'commands' : ['VimFiler']}}

" A tree explorer plugin for navigating the filesystem
NeoBundle 'scrooloose/nerdtree'

" plugin for intensely orgasmic commenting 
NeoBundle 'scrooloose/nerdcommenter'

" TimeTap helps you track the time you spend coding while in Vim
NeoBundle 'rainerborene/vim-timetap'

" Vim plugin that displays tags in a window, ordered by class etc.
NeoBundle 'majutsushi/tagbar'

" Vim plugin to visualize your Vim undo tree
NeoBundle 'sjl/gundo.vim'

" Eclipse like task list
NeoBundle 'vim-scripts/TaskList.vim'

" EasyMotion provides a much simpler way to use some motions in vim
NeoBundle 'Lokaltog/vim-easymotion'

" The grep plugin integrates the grep, fgrep, egrep, and agrep tools
NeoBundle 'vim-scripts/grep.vim'

" very simple vim plugin for easy resizing of your vim windows
NeoBundle 'jimsei/winresizer'

let s:os = system("uname")
if  s:os =~ "Darwin"
  let g:Grep_Xargs_Options='-0' 
endif 

" }}}


" Python plugins {{{

" All-In-One - PyLint, Rope, Pydoc, breakpoints from box
NeoBundleLazy 'klen/python-mode', {'autoload': {'filetypes': ['python']}}

" VIM binding to the autocompletion library Jedi
NeoBundleLazy 'davidhalter/jedi-vim', {'autoload': {'filetypes': ['python']}}

" Work with python virtualenvs in vim
NeoBundle 'jmcantrell/vim-virtualenv'

" }}}


" Syntax and highlighting plugins {{{

" Tmux config
NeoBundle 'zaiste/tmux.vim'

" Coffee script
NeoBundle 'kchmck/vim-coffee-script'

" Syntax highlighting for Django templates
NeoBundle 'vim-scripts/django.vim'

" Syntastic is a syntax checking plugin
NeoBundle 'scrooloose/syntastic'

" Color toggling plugin for ViM
NeoBundle 'saghul/vim-colortoggle'

" vim syntax for LESS (dynamic CSS)
NeoBundle 'groenewege/vim-less'

" Highlight colors in css files (fork of skammer/vim-css-color)
NeoBundle 'ap/vim-css-color'

" Add CSS3 syntax support to vim's built-in syntax/css.vim
NeoBundle 'hail2u/vim-css3-syntax'

" MatchParen for HTML tags
NeoBundle 'gregsexton/MatchTag'

" A simple highlighting file for JSON constructs
NeoBundleLazy 'vim-scripts/JSON.vim', {'autoload': {'filetypes': ['json']}}

" syntax highlighting for Jade templates
NeoBundle 'digitaltoad/vim-jade'

" nginx syntax files
NeoBundle 'evanmiller/nginx-vim-syntax'
" }}}


" Color schemes plugins {{{

" This plugin makes GVim-only colorschemes Just Work in terminal Vim
NeoBundle 'vim-scripts/CSApprox'

" one colorscheme pack to rule them all
NeoBundle 'flazz/vim-colorschemes'

" Highlight several words in different colors simultaneously
NeoBundle 'vim-scripts/Mark--Karkat'

" }}}


" Snippets and autocomplete plugins {{{

" This is an implementation of TextMates Snippets for the Vim Text Editor.
NeoBundle 'SirVer/ultisnips'

" surround.vim: quoting/parenthesizing made simple
NeoBundle 'tpope/vim-surround'

" Markdown syntax highlight for Vim editor with snippets support
NeoBundle 'gmarik/vim-markdown'

" Supertab is a vim plugin which allows you to use <Tab> for all your insert completion needs
NeoBundle 'ervandew/supertab'

" zen-coding for vim
NeoBundle 'mattn/zencoding-vim'

" completion system by maintaining a cache of keywords in the current buffer
NeoBundle 'Shougo/neocomplete.vim'

" }}}


" VCS plugins {{{

" fugitive.vim may very well be the best Git wrapper of all time
NeoBundle 'tpope/vim-fugitive'

" Git viewer (a 'gitk clone')
NeoBundleLazy 'gregsexton/gitv', {'depends':['tpope/vim-fugitive'],
            \ 'autoload':{'commands':'Gitv'}}

" mercenary.vim may very well be the worst Mercurial wrapper of all time
NeoBundle 'phleet/vim-mercenary'

" A plugin that shows a diff via Vim's sign column
NeoBundle 'mhinz/vim-signify'

" }}}


" Unix tools plugins {{{

" A plugin to diff and merge two directories recursively
NeoBundle 'vim-scripts/DirDiff.vim'

" Hexadecimal editor
NeoBundleLazy 'vim-scripts/hexman.vim', { 'autoload' :
            \ { 'mappings' : [['ni', '<Plug>HexManager']]}}
" }}}


" inital install bundles {{{
if first_init_neobundle == 1
  echo "Installing bundles"
  :NeoBundleInstall
  :qa
endif
" }}}

