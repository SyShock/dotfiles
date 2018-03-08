function! ForwardScope(char) 
  call search(a:char)
endfunction

function! BackwardScope(char) 
  call search(a:char, 'b')
endfunction

function! s:getCurrentChar()
  let temp = @"
  normal vy
  let result = eval(string(getreg('"')))
  let @" = temp
  return result

endfunction

function! GoToScope(onMatch)

" done for you
" look at symbol that starts the block
" exclusion characters (',",<,>) before traversing


  let regex = "{\\|}\\|(\\|)\\|<\\|>\\|'\\|`"
  exec 'call '. a:onMatch . '(regex)'
  let c = s:getCurrentChar()

endfunction

imap <S-PageDown> <ESC>vl:call GoToScope('ForwardScope')<CR>i
imap <S-PageUp> <ESC>vl:call GoToScope('ForwardScope')<CR>i
imap <PageDown> <ESC>l:call GoToScope('ForwardScope')<CR>i
imap <PageUp> <ESC>l:call GoToScope('BackwardScope')<CR>i


let s:hidden_all = 0
function! ToggleHiddenAll()
    if s:hidden_all  == 0
        let s:hidden_all = 1
        set noshowmode
        set noruler
        set laststatus=0
        set noshowcmd
    else
        let s:hidden_all = 0
        set showmode
        set ruler
        set laststatus=2
        set showcmd
    endif
endfunction

nnoremap <S-h> :call ToggleHiddenAll()<CR>
