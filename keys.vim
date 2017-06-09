" copy and paste between system clipboard
if has('unnamedplus')
  set clipboard+=unnamedplus
else
  set clipboard+=unnamed    " share windows clipboard
endif

" speed-up input
nnoremap ; :

if exists(':tnoremap')
  " quick run and exit terminal
  " exit to the Normal mode by <Esc><Esc>
  tnoremap <Esc> <C-\><C-n>
endif

" new terminal in the current pane
nnoremap \t :e term://zsh<CR>i

" new terminal in a vertical split pane
nnoremap \tv <C-w>v<C-w>l :e term://zsh<CR>i

" new terminal in a horizontal split pane
nnoremap \ts <C-w>s<C-w>j :e term://zsh<CR>i


" quick navigation between splits
if exists(':tnoremap')
  tnoremap <C-H> <C-\><C-n><C-W>h
  tnoremap <C-j> <C-\><C-n><C-w>j
  tnoremap <C-k> <C-\><C-n><C-w>k
  tnoremap <C-l> <C-\><C-n><C-w>l
  tnoremap <C-q> <C-\><C-n><C-w>c
  tnoremap œ <C-\><C-n>:bd!<CR>:<backspace>
endif


" remap window navigation
nnoremap <C-H> <C-w>h
nnoremap <C-J> <C-w>j
nnoremap <C-K> <C-w>k
nnoremap <C-L> <C-w>l


" remap tab navigation
map <S-L> gt
map <S-H> gT


" remap buffer navigation
nmap ∆ :bp!<CR>:<backspace>
nmap ˚ :bn!<CR>:<backspace>
nmap љ :bn!<CR>:<backspace>
nmap œ :bd<CR>:<backspace>
nmap ∑ :Bclose<CR>:<backspace>


" remap split behavior
nnoremap <C-w>v <C-w>v<C-w>l
nnoremap <C-w>s <C-w>s<C-w>j


nnoremap \wo <C-w>o
nnoremap \wv <C-w>v<C-w>l
nnoremap \ws <C-w>s<C-w>j
nnoremap \wq :bd<CR>:<backspace>
nnoremap \ww :Bclose<CR>:<backspace>


" unsets search highlight by hitting return
nnoremap <silent> <Esc><Esc> :noh<CR> :call clearmatches()<CR>


" search selection text by //
vnoremap // y/<C-R>"<CR>


" scroll the viewport faster
nnoremap <C-e> 3<C-e>
nnoremap <C-y> 3<C-y>
set scrolloff=3


" shifting in visual mode
vnoremap < <gv
vnoremap > >gv


" improve naviation on wrapped lines
noremap j gj
noremap k gk
noremap о gj
noremap л gk


" yanks from cursor to the end of line
nnoremap Y y$
vnoremap Y y$


" delete symbols and strings
noremap d "_d<ESC>
vnoremap d "_d<ESC>

" fast horizontal scrolling
map zl zL
map zh zH


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
