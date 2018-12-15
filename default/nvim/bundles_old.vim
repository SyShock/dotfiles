"NeoBundle Scripts-----------------------------
if has('vim_starting')
  " Required:
  set runtimepath+=/home/void/.config/nvim/bundle/neobundle.vim/
endif

" Required:
call neobundle#begin(expand('/home/void/.config/nvim/bundle'))

" Let NeoBundle manage NeoBundle
" Required:
NeoBundleFetch 'Shougo/neobundle.vim'

" Add or remove your Bundles here:


"
" VISUAL PLUGINS
"
"NeoBundle 'powerline/powerline', {'rtp': 'powerline/bindings/vim/'}
"NeoBundle 'mhinz/vim-signify'
"NeoBundle 'terryma/vim-multiple-cursors'
NeoBundle 'junegunn/goyo.vim'
"NeoBundle 'itchyny/lightline.vim'
"NeoBundle 'flazz/vim-colorschemes'
NeoBundle 'dylanaraps/wal'


"
" FORMATTING PLUGINGS
"

"NeoBundle 'sbdchd/neoformat'
"NeoBundle 'rhysd/vim-grammarous'
"NeoBundle 'godlygeek/tabular'
"NeoBundle 'matze/vim-move'
"NeoBundle 'editorconfig/editorconfig-vim'


"
" SELECTION AND TRAVERSAL
"

"NeoBundle 'terryma/vim-expand-region'
"NeoBundle 'sheerun/vim-polyglot'
"NeoBundle 'MattesGroeger/vim-bookmarks'

"
" BACKENDS AND PANELS
"

"NeoBundle 'tpope/vim-fugitive'
"NeoBundle 'jlanzarotta/bufexplorer'
"NeoBundle 'devjoe/vim-codequery'
NeoBundle 'ctrlpvim/ctrlp.vim'
"NeoBundle 'majutsushi/tagbar'
"NeoBundle 'Shougo/denite.nvim'

"NeoBundle 'KabbAmine/zeavim.vim'
"NeoBundle 'Shougo/vimshell', { 'rev' : '3787e5' }


"
" AUTOCOMPLETION PLUGINS
"

"NeoBundle 'metakirby5/codi.vim'
"NeoBundle 'honza/vim-snippets'
"NeoBundle 'Shougo/neosnippet.vim'
"NeoBundle 'Shougo/neosnippet-snippets'
"NeoBundle 'Quramy/tsuquyomi'
"NeoBundle 'Shougo/neco-vim'
"NeoBundle 'Shougo/deoplete.nvim',
"	  \{ 'do': ':UpdateRemotePlugins' }
"NeoBundle 'mhartington/deoplete-typescript'
"NeoBundle 'ternjs/tern_for_vim'
"NeoBundle 'carlitux/deoplete-ternjs', 
"	  \{ 'build': 
"		\{ 'mac': 'npm install -g tern', 'unix': 'npm install -g tern' }
"	  \}

"
" PERFROMANCE PLUGINS
"

NeoBundle 'tweekmonster/startuptime.vim'
NeoBundle 'xolox/vim-session'


NeoBundle 'nathanaelkane/vim-indent-guides'
"NeoBundle 'ap/vim-css-color'
"NeoBundle 'PotatoesMaster/i3-vim-syntax'
"NeoBundle 'vim-syntastic/syntastic'
"NeoBundle 'HerringtonDarkholme/yats.vim' 
"NeoBundle 'heavenshell/vim-jsdoc'
"NeoBundle 'xolox/vim-misc'
NeoBundle 'Shougo/vimproc.vim', {
\ 'build' : {
\     'windows' : 'tools\\update-dll-mingw',
\     'cygwin' : 'make -f make_cygwin.mak',
\     'mac' : 'make -f make_mac.mak',
\     'linux' : 'make',
\     'unix' : 'gmake',
\    },
\ }


" You can specify revision/branch/tag.

"NeoBundle "tkhren/vim-fake"


" Required:
call neobundle#end()

" Required:
filetype plugin indent on

NeoBundleCheck
"End
