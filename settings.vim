" set syntax and colorscheme
if $TERM == "xterm-256color" || $TERM == "screen-256color" || $COLORTERM == "gnome-terminal"
  set t_Co=256 " number of colors
  let g:solarized_termcolors=256
endif

if &t_Co > 2 || has("gui_running")
  syntax on                 " syntax highlighting on
  syntax sync minlines=256
endif

filetype on                 " try to detect filetypes
filetype plugin indent on   " load filetype plugins/indent settings

set backupdir=~/.vim/tmp/backup " where to put backup files
set undodir=~/.vim/tmp/undo     " where to put undo files
set viewdir=~/.vim/tmp/view     " location for saved views
set noswapfile              " do not create swap files

" copy and paste
if has('unnamedplus')
  set clipboard+=unnamedplus
else
  set clipboard+=unnamed    " share windows clipboard
endif

" alternative copy past
"vmap <C-c> "+yi
"vmap <C-x> "+c
"vmap <C-v> c<ESC>"+p
"imap <C-v> <ESC>"+pa


" encoding
set encoding=utf-8
set fileencoding=utf-8
set fileencodings=utf-8,cp1251,koi8-r,cp866
set termencoding=utf-8

" disable spelling
setlocal spell spelllang=
setlocal nospell

set history=10000  " give me more history


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
set wildignore+=*.pyc                            " python byte code
set wildignore+=*.pyo                            " python optimize byte code
set wildignore+=*.orig                           " merge resolution files
set wildignore+=*.bak                            " backup files
set wildignore+=*.class                          " java byte code
set wildignore+=*.rbc                            " ruby byte code
set wildignore+=.idea                            " IntellyJ IDE work dir
set wildignore+=node_modules/**                  " npm modules dir
set wildignore+=bower_components/**              " bower components dir


" GUI settings
set guifont=Monaco:h12      " set font
set guioptions-=m           " remove menu bar
set guioptions-=T           " remove toolbar
set mousehide               " hide the mouse cursor when typing
set textwidth=79            " set text width for word wrapping
if exists('+colorcolumn')
    set colorcolumn=+1      " columns that are highlighted
endif
set laststatus=2    " always show the status line
set lazyredraw      " do not redraw while running macros
set synmaxcol=500   " don't try to highlight lines longer than 500 characters
set ttyfast         " improves redrawing
set ttyscroll=3     " number of lines to scroll the screen
set showcmd         " show the command being typed
set scrolljump=5    " number of lines to scroll when the cursor gets off screen

" Remove gui scrollbars
set guioptions+=LlRrb
set guioptions-=LlRrb


set nowrap          " no wrap lines
set formatoptions-=t " disable auto-wrap text using textwidth
set formatoptions-=c formatoptions-=r formatoptions-=o " disable auto insert comments
set ruler           " always show current position
set hid             " change buffer - without saving
set nohidden        " remove the buffer when close tab    
set cursorline      " highlight current line
set cursorcolumn    " highlight cursor column
hi! link CursorColumn CursorLine
set noeb vb t_vb=   " don't make noise


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


" better completion:
" Only insert the longest common text of the matches
" Use the popup menu also when there is only one match
" Show extra information about the currently selected completion
set completeopt=longest,menuone,preview
" Disable scanning include files
set complete-=i


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

augroup autoit
  au FileType c,cpp,python,ruby,java autocmd BufWritePre <buffer> :%s/\s\+$//e
  au BufWinEnter * if getfsize(expand("%")) > 1000000 | syntax clear | endif

  au BufWinLeave * silent! mkview
  au BufWinEnter * silent! loadview

  " use absolute line numbers in insert mode and relative numbers in normal mode
  au BufWinEnter * :set relativenumber
  au InsertEnter * :set norelativenumber number
  au InsertLeave * :set relativenumber
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


" Fix russian layout
cab ц w
cab й q
cab Ц! w!
cab Й! q!
cab цй wq
cab Цй wq
cab Цф wa
cab цЙ wq
cab ЦЙ wq
cab Ц w
cab Й q


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


" quick swith between buffers
nmap <D-j> :bn<CR>
imap <D-j> <ESC>:bn<CR>
nmap <D-k> :bp<CR>
imap <D-k> <ESC>:bp<CR>


" always delete, not cut text
nnoremap d "_d
vnoremap d "_d


" scroll the viewport faster
nnoremap <C-e> 3<C-e>
nnoremap <C-y> 3<C-y>
set scrolloff=3

set showbreak=↪
let mapleader="\<Space>"
let maplocalleader = ","
nnoremap ; :


" no switch keyboard layout for commands in normal mode.
set langmap=ёйцукенгшщзхъфывапролджэячсмитьбюЁЙЦУКЕНГШЩЗХЪФЫВАПРОЛДЖЭЯЧСМИТЬБЮ;`qwertyuiop[]asdfghjkl\\;'zxcvbnm\\,.~QWERTYUIOP{}ASDFGHJKL:\\"ZXCVBNM<>


" improve naviation on wrapped lines
noremap j gj
noremap k gk
noremap о gj
noremap л gk

nnoremap <CR> :noh<CR><CR> " unsets the "search" by hitting return
