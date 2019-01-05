"=================Normal mode
map <A-1> 1gt
map <A-2> 2gt
map <A-3> 3gt
map <A-4> 4gt
map <A-5> 5gt
map <A-6> 6gt
map <A-7> 7gt
map <A-8> 8gt
map <A-9> 8gt


"=================Quick load
let $DOTFILES=$HOME.'/.dotfiles/default'
map <Space>vi :Explore $HOME/.config/nvim/config<CR>
map <Space>dot :Explore $DOTFILES<CR>
map <Space>xr :edit $HOME/.Xresources<CR>
map <Space>sh :edit $HOME/.shellrc<CR>
map <Space>i3 :edit $HOME/.i3/config<CR>
map <Space>stat :edit $DOTFILES/polybar/config<CR>
map <Space>Xr :edit #HOME/.Xresources<CR>
map <Space>comp :edit $HOME/.config/.compton.conf<CR>


map <Space>e :Explore<CR>
map <Space>E :tabnew <bar> :Explore<CR>
map <Space>v :vnew<CR>
map <Space>h :new<CR>
map <Space>w :! urxvt -e nvim &<CR><CR>
map <Space>n :tabnew<CR>
map <C-BS> <C-w>
map <C-s> :w<CR>
map <Space>R :w<CR>:source %<CR>
map <A-t> :TagbarToggle<CR>
map <Space>x :! sublime %<CR>

map <space>fs :set foldmethod=syntax<CR>
map <space>fi :set foldmethod=indent<CR>
map <space>fm :set foldmethod=marker<CR>

map zs zR
map zd zM
map <C-b> :CtrlPBuffer<CR>

"=================Input mode
imap <C-D> <ESC>dd<CR>i
imap <C-d> <ESC>dd<UP>pp<UP><CR>i
imap <C-z> <ESC>:undo<CR>i
imap <C-Z> <ESC>:redo<CR>i
imap <C-backspace> <C-w>
imap <C-\> <C-w>
imap <f19> <c-w>

imap <C-s> <ESC>:w<CR>i
"imap <PageUp> <ESC>?[\\|(\\|{\\|<\\|'\\|"\\|`<CR>i
"imap <PageDown> <ESC>/]\\|)\\|}\\|>\\|'\\|"\\|`<CR>a

imap <C-d> <ESC>ddi
imap  <ESC>ddPpa

map <A-j> ddp
map <A-k> ddkP

map <A-Up> ddkP
map <A-Down> ddp

imap <A-Up> <ESC>ddkPi
imap <A-Down> <ESC>ddpi



nnoremap <c-z> <nop>
imap <c-z> <ESC>ui

imap <C-CR> <ESC>$a<CR>

imap <C-UP> <ESC>za<CR>a
imap <C-DOWN> <ESC>za<CR>a

map <Space>f1 :set foldlevel=1<CR>
map <Space>f2 :set foldlevel=2<CR>
map <Space>f3 :set foldlevel=3<CR>
map <Space>f4 :set foldlevel=4<CR>

map <Space>b :BufExplorer<CR>

"=================Visual mode
vmap <C-v> <ESC>p
vmap <C-c> <ESC>y
vmap <C-E> y:%s/<C-r>0/new text/g

vmap <C-D> <ESC>dd<CR>i
vmap <C-d> <ESC>dd<UP>pp<UP><CR>i
vmap b aB
"=================Custom mode


"=================Global mode

"=================Command Mode
cmap <F19> <C-w>

imap <C-f> <ESC>:exec "normal i //FIXME(" . $USER . "):"<CR>a

"Mouse=======================
