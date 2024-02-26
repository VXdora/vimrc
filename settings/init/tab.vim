set splitbelow
set splitright
set showtabline=2

" Get Terminal Buffer
"0: no terminal tab
function GetTerminalBufferNumber()
  let current_buffer = bufnr('%')
  for buf_number in range(1, bufnr('$'))
    if getbufvar(buf_number, '&buftype') == 'terminal'
      return buf_number
    endif
  endfor
  return 0
endfunction

" bnext and bprev settings
function BNextSkipTerm()
  let start_buffer = bufnr('%')
  bnext
  while &buftype ==# 'terminal' && bufnr('%') != start_buffer
    bnext
  endwhile
endfunction

function BPrevSkipTerm()
  let start_buffer = bufnr('%')
  bprev
  while &buftype ==# 'terminal' && bufnr('%') != start_buffer
    bprev
  endwhile
endfunction

function OpenTermial()
  let termBufNumber = GetTerminalBufferNumber()
  if termBufNumber == 0
    execute "terminal ++rows=35"
  else
    echo termBufNumber
    execute "split +buffer" . termBufNumber
    execute termBufNumber . "wincmd w"
    execute "resize 35"
    startinsert
  endif
endfunction

nnoremap <C-t> :call OpenTermial()<CR>
nnoremap <C-k> :call BNextSkipTerm()<CR>
nnoremap <C-j> :call BPrevSkipTerm()<CR>


" terminal settings
autocmd WinEnter * if &buftype ==# 'terminal' |  resize 35 | endif
autocmd WinLeave * if &buftype ==# 'terminal' |  resize 10 | endif
autocmd WinEnter * if winnr('$') == 1 && &buftype == 'terminal' | :%y | call term_sendkeys(GetTerminalBufferNumber(), "exit\<cr>")  | endif 

nnoremap <C-s> :source ~/.vimrc<CR>

execute "terminal ++rows=10"
