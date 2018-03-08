let g:lightline = {
      \ 'colorscheme': 'molokai',
      \ 'component': {
      \   'readonly': '%{&readonly?"":""}',
      \ },
      \ 'separator': { 'left': '', 'right': '' },
      \ 'subseparator': { 'left': '', 'right': '|' }
      \ }

" Use deoplete.
let g:deoplete#enable_at_startup = 1

    " SuperTab like snippets' behavior.
    imap <expr><TAB> neosnippet#expandable_or_jumpable() ?
     \ "\<Plug>(neosnippet_expand)"
     \: pumvisible() ? "\<C-n>" : "\<TAB>"
    smap <expr><TAB> neosnippet#expandable_or_jumpable() ?
     \ "\<Plug>(neosnippet_expand)"
     \: "\<TAB>"

" Plugin key-mappings.
" Note: It must be "imap" and "smap".  It uses <Plug> mappings.
imap <C-k>     <Plug>(neosnippet_expand_or_jump)
smap <C-k>     <Plug>(neosnippet_expand_or_jump)
xmap <C-k>     <Plug>(neosnippet_expand_target)

map K <Plug>(expand_region_expand)
map J <Plug>(expand_region_shrink)

map <C-PageUp> <Plug>(expand_region_expand)
map <C-PageDown> <Plug>(expand_region_shrink)


" Enable snipMate compatibility feature.
let g:neosnippet#enable_snipmate_compatibility = 1

" Tell Neosnippet about the other snippets
let g:neosnippet#snippets_directory='~/.config/nvim/bundle/vim-snippets/snippets'



"let g:neoformat_python_autopep8 = {
"	\ 'exe': 'autopep8',
"	\ 'args': ['-s 4', '-E'],
"	\ 'replace': 1 " replace the file, instead of updating buffer (default: 0),
"	\ 'stdin': 1, " send data to stdin of formatter (default: 0)
"	\ 'no_append': 1,
"	\ }



"highlight BookmarkSign ctermbg=NONE ctermfg=160
"highlight BookmarkLine ctermbg=194 ctermfg=NONE
"let g:bookmark_sign = '♥'
"let g:bookmark_highlight_lines = 1

let g:bookmark_save_per_working_dir = 1
let g:bookmark_auto_save = 1

