filetype on                 " try to detect filetypes
filetype plugin indent on   " load filetype plugins/indent settings

" search
set path=.,,**
set hlsearch        " highlight searched text
set incsearch       " incremental searches

set confirm         " asking if you wish to save changed files
set ignorecase      " case insensitive by default
set smartcase       " if there are caps, go case-sensitive
set showmatch       " Show matching brackets
set matchpairs+=<:> " Match < > brackets too
set matchtime=2     " how many tenths of a second to blink matching brackets
set shiftround      " when at 3 spaces, and I hit > ... go to 4, not 5
set nowrap          " dont wrap lines
set noshowcmd       " hide the last command
set autoread        " reload file if it has changed outside
set linespace=0     " no extra spaces between rows
set backspace=indent,eol,start " more powerful backspacing
set concealcursor=nc           " don't conceal while editing

set laststatus=2    " always show the status line
set cursorline      " highlight current line
"set cursorcolumn    " highlight current column
set scrolljump=5    " number of lines to scroll when the cursor gets off screen
set mousehide       " hide the mouse while typing

set noswapfile      " do not create swap files
set nobackup        " don't ctreate backup files
set nowb            " no backup on overwrite

augroup autoit
  " use absolute line numbers in insert mode and relative numbers in normal mode
  au BufWinEnter * :set relativenumber
  au InsertEnter * :set norelativenumber number
  au InsertLeave * :set relativenumber
augroup END


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

set completeopt=longest,menuone

" no switch keyboard layout for commands in normal mode.
set langmap=ёйцукенгшщзхъфывапролджэячсмитьбюЁЙЦУКЕНГШЩЗХЪФЫВАПРОЛДЖЭЯЧСМИТЬБЮ;`qwertyuiop[]asdfghjkl\\;'zxcvbnm\\,.~QWERTYUIOP{}ASDFGHJKL:\\"ZXCVBNM<>


if has("nvim") || has("gui_running") || $TERM == "xterm-256color" || $TERM == "screen-256color" || $COLORTERM == "gnome-terminal"
  syntax on " syntax highlighting on
  if !has("nvim") && !has("gui_running")
    set t_Co=256 " number of colors
  else
    let $NVIM_TUI_ENABLE_CURSOR_SHAPE=1
  endif
  let g:solarized_termcolors=256 " set number of colors for a solarized* themes
  let g:solarized_termtrans=1
  let g:solarized_contrast="normal"
  let g:solarized_visibility="normal"
  let base16colorspace=256 " access colors present in 256 colorspace
endif

if !has("nvim")
  set nocompatible " be iMproved, explicitly get out of vi-compatible mode
  set noeb vb t_vb=   " disable beeps

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
  set guicursor+=n:blinkon0 " don't blink in normal mode
endif

if has("gui_running")
  set guioptions-=r " remove right-hand scroll bar
  set guioptions-=L " remove left-hand scroll bar
  set guioptions-=e " disable tabs
  set winaltkeys=no " don't use ALT to access the menu
endif

"MacVim-specific configurations
if has("gui_macvim") || has("gui_vimr")
  set imd
  set guifont=Monaco:h12
endif

