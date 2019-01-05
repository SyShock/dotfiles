"dein Scripts-----------------------------
if &compatible
  set nocompatible               " Be iMproved
endif

" Required:
set runtimepath+=/home/void/.cache/dein/repos/github.com/Shougo/dein.vim

" Required:
if dein#load_state('/home/void/.cache/dein')
  call dein#begin('/home/void/.cache/dein')

  " Let dein manage dein
  " Required:
  call dein#add('/home/void/.cache/dein/repos/github.com/Shougo/dein.vim')

  " Add or remove your plugins here like this:
  call dein#add('Shougo/neosnippet.vim')
  call dein#add('Shougo/neosnippet-snippets')
  call dein#add('wsdjeg/dein-ui.vim') 
  call dein#add('dylanaraps/wal.vim')
  echo "Plugins parsed!"

  " Required:
  call dein#end()
  call dein#save_state()
endif

" Required:
filetype plugin indent on
syntax enable

" If you want to install not installed plugins on startup.
if dein#check_install()
  call dein#install()
endif

"End dein Scripts-------------------------


filetype plugin indent on
syntax enable
