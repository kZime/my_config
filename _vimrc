set nu
set guifont=Consolas:h14
colorscheme evening

set shiftwidth=4 " when use == sizeof(tab)->space
set tabstop=4 " sizeof(tab)
set softtabstop=4 " del space as tab
set expandtab " tab 2 space 
filetype indent on
syntax on

set nocompatible 
set backspace=indent,eol,start

map ;; :w<CR>
map ;[ :w<CR>:!g++ % -o %<.exe -Wall & %<.exe<CR><CR>
map ;] :w<CR>:!g++ % -o %<.exe -g -Wall & gdb -q %<.exe<CR><CR>
map <C-n> :tabnew<CR>
map <C-Right> :tabnext<CR>
map <C-Left> :tabpre<CR>
map <C-w> :close<CR>

imap ;; <ESC>:w<CR>
imap ;[ <ESC>:w<CR>:!g++ % -o %<.exe -Wall & %<.exe<CR><CR>
imap ;] <ESC>:w<CR>:!g++ % -o %<.exe -g -Wall & gdb -q %<.exe<CR><CR>
imap {<CR> { }<LEFT><CR><CR><UP><TAB>
