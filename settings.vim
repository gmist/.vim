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

" disable spelling
setlocal spell spelllang=
setlocal nospell

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
