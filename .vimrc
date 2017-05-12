set tabstop=4
set shiftwidth=4
set showcmd
set number
set ruler
set mouse=a
set autoindent
filetype plugin indent on

" 定义快捷键的前缀，即<Leader>
let mapleader=";"

" imap [ []<LEFT>
" imap ( ()<LEFT>
" imap () ()
" imap {<CR> {}<LEFT><CR><CR><UP><TAB>

imap { {}<LEFT><CR><UP><ESC>$a

imap <Leader>; <ESC>:w<CR>
imap <Leader>' <ESC>:wq<CR>
imap <Leader>] <ESC>:w<CR> :!gdb %< -q <CR>
imap <Leader>[ <ESC>:w<CR> :!g++ % -o %< -g -Wall<CR>
imap <Leader>\ <ESC>:w<CR> :!time ./%< <CR>
imap <Leader>in <ESC>:w<CR> :!vim in.txt<CR>

map <Leader>; :w<CR>
map <Leader>' :wq<CR>
map <Leader>] :w<CR> :!gdb %< -q <CR>
map <Leader>[ :w<CR> :!g++ % -o %< -g -Wall<CR>
map <Leader>\ :w<CR> :!time ./%< <CR>
map <Leader>in :w<CR> :!vim in.txt<CR>
