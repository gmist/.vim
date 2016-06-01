" copy and paste between system clipboard
if has('unnamedplus')
  set clipboard+=unnamedplus
else
  set clipboard+=unnamed    " share windows clipboard
endif


if exists(':tnoremap')
  " quick run and exit terminal
  " exit to the Normal mode by <Esc><Esc>
  tnoremap <Esc> <C-\><C-n>
endif

" new terminal in the current pane
nnoremap \t :e term://zsh<CR>i<CR>

" new terminal in a vertical split pane
nnoremap \tv <C-w>v<C-w>l :e term://zsh<CR>i<Cr>

" new terminal in a horizontal split pane
nnoremap \ts <C-w>s<C-w>j :e term://zsh<CR>i<CR>


" quick navigation between splits
if exists(':tnoremap')
  tnoremap <C-H> <C-\><C-n><C-W>h
  tnoremap <C-j> <C-\><C-n><C-w>j
  tnoremap <C-k> <C-\><C-n><C-w>k
  tnoremap <C-l> <C-\><C-n><C-w>l
  tnoremap <C-q> <C-w>c
endif

nnoremap <C-H> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l
nnoremap <C-q> <C-w>c

" set focus to new split
nnoremap <C-w>v <C-w>v<C-w>l
nnoremap <C-w>s <C-w>s<C-w>j

" quick resize splits
nnoremap <C-Left> :vertical resize-10<CR>:<backspace>
nnoremap <C-Up> :resize+5<CR>:<backspace>
nnoremap <C-Down> :resize-5<CR>:<backspace>
nnoremap <C-Right> :vertical resize+10<CR>:<backspace>


" quick navigation between buffers
map ∆ :bp!<CR>:<backspace>
map ˚ :bn!<CR>:<backspace>
map љ :bn!<CR>:<backspace>
map œ :bd<CR>:<backspace>
nnoremap ¬ gt
nnoremap ˙ gT


" unsets search highlight by hitting return
nnoremap <silent> <Esc><Esc> :noh<CR> :call clearmatches()<CR>


" search selection text by //
vnoremap // y/<C-R>"<CR>


" scroll the viewport faster
nnoremap <C-e> 3<C-e>
nnoremap <C-y> 3<C-y>
set scrolloff=3


" improve naviation on wrapped lines
noremap j gj
noremap k gk
noremap о gj
noremap л gk


" yanks from cursor to the end of line
nnoremap Y y$
vnoremap Y y$


" delete symbols and strings
nnoremap x "_x
vnoremap x "_x
noremap X "_dd
vnoremap X "_dd


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
