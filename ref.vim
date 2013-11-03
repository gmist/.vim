" Vim Reference {{{
"
"  %          --  current filename
"  %:p        --  current filepath
"  $VIMRUNTIME      --  /{colors,syntax,macros}
"  ListMappings     --  list commented mappings
"  :map             --  list actual mappings
"  :scriptnames     --  list scripts and plugins
"  :set             --  list all nondefault options 
"  e <path>         --  open file
"  e <pa...><tab>   --  open file with wildmenu completion
"  \e [...] <enter> --  open file
"  :tabnew <path>   --  open file
"  :read filename|  --  insert filename at cursor
"  :read !cmd       --  insert cmd output at cursor
"  :%! [cmd]        --  buffer > stdin > [cmd] > stdout => buffer.replace
"
"  [n]G             --  goto line #
"  g ctrl-g         --  whereami
"  u                --  undo
"  ^r               --  redo
"  :%s:\(.*\):+\1:g --  Regex
"
" Modes
"  i                --  insert
"  I                --  insert at beginning of line
"  a                --  append
"  A                --  append at end of line
"  v                --  visual
"  c-v              --  vertical visual block
"  V                --  visual line
"  ;;               --  command
"  <Esc>            --  command
"
" Vim Marks
"  m[a-z]{1}        --  set mark
"  `[a-z]{1}        --  goto mark
"  '[a-z]{1}        --  goto mark
"
" Macros
"  q[a-z]{1}        --  start recording
"  q                --  stop recording
"  @[a-z]{1}        --  replay macro
"  @@               --  repeat macro
"  q2<seq><esc>q;@2 --  record macro to 2 and repeat 
"
" Searching
"  /<pattern>       --  forvard search for term
"  ?<pattern>       --  backward search
"  *                --  search for term under cursor next
"  #                --  search for term under cursor previous
"  n                --  next search ocurrence
"  N                --  previous search ocurrence
"  :%s/old/new/g    --  find and replace
"  :%s/old/new/gc    --  find and replace with confirmation
"
"  :[l][vim]grep <pattern> <file>
"
"  :cl,  :ll        --  list list
"  :copen,lopen [h] --  open list
"  :cw,  :lw        --  toggle show list
"  :ccl[ose], lcl   --  close list
"  :cn,  :ln        --  next <Enter>
"  :cp,  :lp        --  prev <Enter>
"  :cc!, :lc [nr]   --  jump to [nr]
"  :cfir,:cla       --  first, last
"
" Yanking and Pasting
"  y[a-z]           --  yank to buffer [a-z]
"  p[a-z]           --  paste from buffer [a-z]
"  ]p               --  paste to level
"
" Indenting/Shifting Blocks
"  [n]<             --  shift block left
"  [n]>             --  shift block right
"
"
" Folding
"  :help Fold       --  also usr_28
"  zf               --  create fold
"  zo               --  fold open
"  zO               --  fold open recursive
"  zc               --  fold close
"  zC               --  fold close recursive
"  zx               --  undo manual fold actions
"  zX               --  undo manual fold actions and recompute
"  zR               --  open all folds
" }}}

