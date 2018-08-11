set number
set numberwidth=1
set nospell
hi Pmenu ctermbg=red
set clipboard=unnamedplus
set tw=75 fo=cqt wm=0

set fillchars+=vert:│

colorscheme wal

highlight VertSplit ctermbg=1 ctermfg=0
highlight SpellBad ctermfg=160 ctermbg=0
highlight SpellCap ctermfg=81 ctermbg=0
highlight PMenu ctermfg=1 ctermbg=0
highlight PmenuSel ctermfg=2 ctermbg=0
highlight Folded ctermbg=16 ctermfg=8
highlight Search cterm=reverse ctermfg=0
highlight clear CursorLine


let &t_SI = "\<Esc>[6 q"
let &t_SR = "\<Esc>[4 q"
let &t_EI = "\<Esc>[2 q"

set listchars=tab:\│\ 
set list 

set cursorline
set mouse=a

hi clear ColorLine
set nocursorline
