set nu
set guifont=Consolas:h14
colorscheme evening

set shiftwidth=2 " when use == sizeof(tab)->space
set tabstop=2 " sizeof(tab)
set softtabstop=2 " del space as tab
set expandtab " tab 2 space 
filetype indent on
syntax on

set nocompatible 
set backspace=indent,eol,start

map ;; :w<CR>
map ;[ :w<CR>:!g++ % -o %<.exe -O2 -Wall & %<.exe<CR><CR>
map ;] :w<CR>:!g++ % -o %<.exe -g -Wall & gdb -q %<.exe<CR><CR>

imap ;; <ESC>:w<CR>
imap ;[ <ESC>:w<CR>:!g++ % -o %<.exe -O2 -Wall & %<.exe<CR><CR>
imap ;] <ESC>:w<CR>:!g++ % -o %<.exe -g -Wall & gdb -q %<.exe<CR><CR>
