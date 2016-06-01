call plug#begin('~/.vim/plugged')

function! DoRemote(arg)
  UpdateRemotePlugins
endfunction

" tools plugins {{{

" lean & mean status/tabline for vim that's light as air
Plug 'vim-airline/vim-airline'

" }}} end tools plugins



" navigation, motion and edit plugins {{{

" A tree explorer plugin
Plug 'scrooloose/nerdtree'

" allows you to visually select increasingly regions of text
Plug 'terryma/vim-expand-region'

" plugin for intensely orgasmic commenting
Plug 'scrooloose/nerdcommenter'

" Better whitespace highlighting for Vim
Plug 'ntpeters/vim-better-whitespace'

" editorConfig plugin for Vim
Plug 'editorconfig/editorconfig-vim'

" A code-completion engine
Plug 'Valloric/YouCompleteMe', { 'do': './install.py' }

" }}} end navigation plugins



" colors plugins {{{

" colorschemes all in one
Plug 'gmist/vim-palette'

" color toggling plugin
Plug 'saghul/vim-colortoggle'

" easy to quickly switch between color schemes
Plug 'xolox/vim-colorscheme-switcher' | Plug 'xolox/vim-misc'

" plugin that highlights all the occurrences of the word under your cursor
Plug 'lfv89/vim-interestingwords'

" always highlights the enclosing html/xml tags
Plug 'valloric/MatchTagAlways'

" }}} end colors plugins



" search plugins {{{

" plugin for fzf
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'

" plugin for the_silver_searcher
Plug 'Numkil/ag.nvim'

" }}} end search plugins


" language, syntax and linting plugins {{{

" collection of language packs
Plug 'sheerun/vim-polyglot'

" Syntax checking hacks
Plug 'scrooloose/syntastic'

" Go (golang) support for Vim
Plug 'fatih/vim-go'

" automatically adjusts 'shiftwidth' and 'expandtab'
Plug 'tpope/vim-sleuth'

" }}} end syntax plugins


" VCS plugins {{{

" fugitive.vim may very well be the best Git wrapper of all time
Plug 'tpope/vim-fugitive'

" show a diff via sign column
Plug 'mhinz/vim-signify'

" }}} end VCS plugins

" inital install plugins {{{
if first_init_plug == 1
  echo "Installing plugins"
  :PlugInstall
  :qa
endif
" }}}

call plug#end()


" load pluggins settings
for fpath in split(globpath('~/.config/nvim/p-settings', '*.vim'), '\n')
  exe 'source' fpath
endfor
