" vim: fdm=marker:fdl=0

set nocompatible " be iMproved, explicitly get out of vi-compatible mode


" NeoBundle {{{
filetype off " required!

" Initial setup NeoBundle
" $ mkdir -p ~/.vim/bundle
" $ git clone git://github.com/Shougo/neobundle.vim ~/.vim/bundle/neobundle.vim

if has('vim_starting')
 set runtimepath+=~/.vim/bundle/neobundle.vim/
endif

call neobundle#rc(expand('~/.vim/bundle/'))

" Let NeoBundle manage NeoBundle
NeoBundleFetch 'Shougo/neobundle.vim'

" }}}


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


" VIM settings {{{

" set syntax
syntax on                   " syntax highlighting on
filetype on                 " try to detect filetypes
filetype plugin indent on   " load filetype plugins/indent settings

set backupdir=~/.vim/tmp/backup " where to put backup files
set undodir=~/.vim/tmp/undo     " where to put undo files
set viewdir=~/.vim/tmp/view     " location for saved views
set noswapfile              " do not create swap files
if has('unnamedplus')
  set clipboard+=unnamedplus
else
  set clipboard+=unnamed    " share windows clipboard
endif

" encoding
set encoding=utf-8
set fileencoding=utf-8
set fileencodings=utf-8,cp1251,koi8-r,cp866
set termencoding=utf-8

menu Encoding.koi8-r :e ++enc=koi8-r ++ff=unix<CR>
menu Encoding.cp1251 :e ++enc=cp1251 ++ff=dos<CR>
menu Encoding.cp866 :e ++enc=cp866 ++ff=dos<CR>
menu Encoding.utf-8 :e ++enc=utf8<CR>

map <F8> :emenu Encoding.


set history=100000  " give me more history
set synmaxcol=500   " don't try to highlight lines longer than 500 characters


" completion ignore list
set wildignore+=.hg,.git,.svn                    " version control
set wildignore+=*.aux,*.out,*.toc                " LaTeX intermediate files
set wildignore+=*.jpg,*.bmp,*.gif,*.png,*.jpeg   " binary images
set wildignore+=*.o,*.obj,*.exe,*.dll,*.manifest " compiled object files
set wildignore+=*.spl                            " compiled spelling word lists
set wildignore+=*.sw?                            " vim swap files
set wildignore+=*.DS_Store                       " OSX bullshit
set wildignore+=*.luac                           " lua byte code
set wildignore+=migrations                       " django migrations
set wildignore+=*.pyc                            " dython byte code
set wildignore+=*.orig                           " merge resolution files
set wildignore+=*.bak                            " backup files
set wildignore+=*.class                          " java byte code
set wildignore+=*.rbc                            " ruby byte code
set wildignore+=.idea                            " IntellyJ IDE work dir


" GUI settings
set guifont=Monaco:h12      " set font
set rnu                     " use relative number
set number                  " show line numbers
set guioptions-=m           " remove menu bar
set guioptions-=T           " remove toolbar
set completeopt=menuone     " don't use a pop up menu for completions
set mousehide               " hide the mouse cursor when typing
if exists('+colorcolumn')
    set colorcolumn=79      " columns that are highlighted
endif
set laststatus=2    " always show the status line
set lazyredraw      " do not redraw while running macros
set showcmd         " show the command being typed

" Remove gui scrollbars
set guioptions+=LlRrb
set guioptions-=LlRrb

" indent
set expandtab       " convert tabs to spaces
set smarttab        " auto correct number of spaces when aligning text
set bs=2            " same as ':set backspace=indent,eol,start'
set tabstop=2       " the width set to 2 space
set softtabstop=2   " how many spaces should a tab be
set shiftwidth=2    " 2 space indent width
set textwidth=80    " maximum width of text that is being inserted
set ai              " auto indent
"set si             " smart indet


set nowrap          " no wrap lines
set ruler           " always show current position
set hid             " change buffer - without saving
set nohidden        " remove the buffer when close tab    
set cursorline      " highlight current line
"set cursorcolumn    " highlight cursor column
"hi! link CursorColumn CursorLine
set noerrorbells    " don't make noise
set novisualbell    " don't blink

" search
set path=.,,**
set hlsearch        " highlight searched text
set incsearch       " incremental searches


set ignorecase      " case insensitive by default
set smartcase       " if there are caps, go case-sensitive
set showmatch       " Show matching brackets
set matchpairs+=<:> " Match < > brackets too
set matchtime=1     " how many tenths of a second to blink matching brackets
set shiftround      " when at 3 spaces, and I hit > ... go to 4, not 5


" color scheme
syntax enable
if $TERM == "xterm-256color" || $TERM == "screen-256color" || $COLORTERM == "gnome-terminal"
  set t_Co=256 " number of colors
endif

" set the cursor to a vertical line in insert mode and a solid block
" in command mode
let &t_SI = "\<Esc>[5 q"
let &t_EI = "\<Esc>[2 q"
"\e[0 q"  default 
"\e[1 q"  blinking block 
"\e[2 q"  steady block 
"\e[3 q"  blinking underscore 
"\e[4 q"  steady underscore 
"\e[5 q"  blinking line 
"\e[6 q"  steady line 
autocmd InsertEnter,InsertLeave * set cul!
set gcr=n:blinkon0 " don't blink in normal mode

" upon hitting escape to change modes,
" send successive move-left and move-right
" commands to immediately redraw the cursor
inoremap <special> <Esc> <Esc>hl


" folding
if has('folding')
  set foldmethod=marker " fold on marker / indent, syntax
  set foldlevel=999
endif
au BufWinLeave * silent! mkview
au BufWinEnter * silent! loadview


" better completion
set completeopt=longest,menuone,preview


" enable omni completion.
au FileType css set omnifunc=csscomplete#CompleteCSS
au FileType html,markdown,ctp set omnifunc=htmlcomplete#CompleteTags
au FileType javascript set omnifunc=javascriptcomplete#CompleteJS
au FileType python set omnifunc=pythoncomplete#Complete
au FileType xml set omnifunc=xmlcomplete#CompleteTags
au FileType php,ctp set omnifunc=phpcomplete#CompletePHP
au FileType vim set omnifunc=syntaxcomplete#Complete


" filetype extensions
augroup filetypedetect

  " django templates
  au BufNewFile,BufRead *.jinja2 set filetype=htmldjango
  au BufNewFile,BufRead *.html set filetype=htmldjango

  " vagrant file
  au BufNewFile,BufRead Vagrantfile set filetype=ruby

  " json files
  au BufRead,BufNewFile *.json setfiletype json
  
  " coffee
  au BufNewFile,BufRead *.coffee set filetype=coffee 

  " python formatting help
  au BufRead *.py set si cinwords=if,elif,else,for,while,try,except,finally,def,class
  
  " html
  au FileType ruby,haml,eruby,yaml,html,javascript,sass,cucumber set sw=2 sts=2

  " python
  au FileType python set sw=4 sts=4 

augroup END


" python syntax
let python_highlight_all=1
setlocal keywordprg=pydoc


" yanks from cursor to the end of line
nnoremap Y y$

" Fix pressed Shift
cab W! w!
cab Q! q!
cab Wq wq
cab Wa wa
cab wQ wq
cab WQ wq
cab W w
cab Q q

" easy buffers navigation
map <C-h> <C-w>h
map <C-j> <C-w>j
map <C-k> <C-w>k
map <C-l> <C-w>l

" disable arrow keys
map <Left> <Nop>
map <Right> <Nop>
map <Up> <Nop>
map <Down> <Nop>

" scroll the viewport faster
nnoremap <C-e> 3<C-e>
nnoremap <C-y> 3<C-y>

set showbreak=↪
let mapleader="\<Space>"
let maplocalleader = ","
nnoremap ; :

" no switch keyboard layout for commands in normal mode.
set langmap=ёйцукенгшщзхъфывапролджэячсмитьбюЁЙЦУКЕНГШЩЗХЪФЫВАПРОЛДЖЭЯЧСМИТЬБЮ;`qwertyuiop[]asdfghjkl\\;'zxcvbnm\\,.~QWERTYUIOP{}ASDFGHJKL:\\"ZXCVBNM<>

" }}}


" Spelling {{{
setlocal spell spelllang=
setlocal nospell
function ChangeSpellLang()
    if &spelllang =~ "en_us"
        setlocal spell spelllang=ru
        echo "spelllang: ru"
    elseif &spelllang =~ "ru"
        setlocal spell spelllang=
        setlocal nospell
        echo "spelllang: off"
    else
        setlocal spell spelllang=en_us
        echo "spelllang: en"
    endif
endfunc

" map spell on/off for English/Russian
map <F7> <Esc>:call ChangeSpellLang()<CR>
" }}}


" Tabsetting functions {{{
function! Fourtabs()
    set tabstop=4           " 4-space hard tabs
    set softtabstop=4       " 4-space soft tabs
    set shiftwidth=4        " 4-space indent
endfunction
command! -nargs=* Fourtabs call Fourtabs()

function! Threetabs()
    set tabstop=3
    set softtabstop=3
    set shiftwidth=3
endfunction
command! -nargs=* Threetabs call Threetabs()

function! Twotabs()
    set tabstop=2
    set softtabstop=2
    set shiftwidth=2
endfunction
command! -nargs=* Twotabs call Twotabs()
" Default to twotabs
Twotabs
" }}}


" setup vim-colortoggle plugin {{{
let g:light_colorscheme='pyte'
let g:dark_colorscheme='kellys'
let g:default_background_type="dark"
" }}}


" setup NERDTree plugin {{{
let NERDTreeChDirMode=2
let NERDTreeIgnore=['\.rbc$', '\~$', '\.pyc$', '\.db$', '\.sqlite$']
let NERDTreeShowBookmarks=1
nmap <silent> <F2> :NERDTreeToggle<CR>
imap <silent> <F2> :NERDTreeToggle<CR>
" }}}


" setup Neocomplete {{{

let g:neocomplete#enable_at_startup = 1
let g:neocomplete#enable_smart_case = 1
let g:neocomplete#enable_auto_select = 1
let g:neocomplete#enable_refresh_always = 1
let g:neocomplete#max_list = 30
let g:neocomplete#min_keyword_length = 1
let g:neocomplete#sources#syntax#min_keyword_length = 1
let g:neocomplete#data_directory = '~/.vim/tmp/neocomplete'

" }}}


" setup tagbar plugin {{{
" open tagbar using (right sidebar) using <F3>
nnoremap <silent> <F3> :TagbarToggle<CR>
" }}}


" setup vim-airline {{{
let g:airline_enable_fugitive=1
let g:airline_enable_syntastic=1
let g:airline_enable_bufferline=1
" }}}


" setup syntastic plugin {{{
let g:syntastic_error_symbol='✗'
let g:syntastic_warning_symbol='⚠'
let g:syntastic_style_error_symbol  = 'ϟ'
let g:syntastic_style_warning_symbol  = '≈'
let g:syntastic_python_checkers=['pylint']
let g:syntastic_ignore_files = ['\.py$']
" }}}


" python-mode config
source ~/.vim/python-mode.vim

" unite config
source ~/.vim/unite.vim

