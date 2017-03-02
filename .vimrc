" Nice line numbers
set rnu
set nu
highlight LineNr ctermfg=93

" Nice tabbs
set tabstop=4
set autoindent

" Save in insert mode
inoremap <F3> <c-o>:w<cr>

" Save forcefully
command W :execute ':silent w!sudo tee > /dev/null %' | :edit!

" Print timestamp
inoremap <C-d> ----------<CR><CR><C-R>=strftime("%b %d")<CR><CR>----------<CR>

" Nice settings
set nowrap
set cursorline

" Line swapping
noremap <a-up> :call feedkeys( line('.')==1 ? '' : 'ddkP' )<CR>
noremap <a-down> ddp
inoremap <a-up> :call feedkeys( line('.')==1 ? '' : 'ddkP' )<CR>
inoremap <a-down> ddp

" Colors
set term=xterm-256color
