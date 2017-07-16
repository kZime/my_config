set nocompatible
source $VIMRUNTIME/vimrc_example.vim
source $VIMRUNTIME/mswin.vim
behave mswin

set diffexpr=MyDiff()
function MyDiff()
  let opt = '-a --binary '
  if &diffopt =~ 'icase' | let opt = opt . '-i ' | endif
  if &diffopt =~ 'iwhite' | let opt = opt . '-b ' | endif
  let arg1 = v:fname_in
  if arg1 =~ ' ' | let arg1 = '"' . arg1 . '"' | endif
  let arg2 = v:fname_new
  if arg2 =~ ' ' | let arg2 = '"' . arg2 . '"' | endif
  let arg3 = v:fname_out
  if arg3 =~ ' ' | let arg3 = '"' . arg3 . '"' | endif
  let eq = ''
  if $VIMRUNTIME =~ ' '
    if &sh =~ '\<cmd'
      let cmd = '""' . $VIMRUNTIME . '\diff"'
      let eq = '"'
    else
      let cmd = substitute($VIMRUNTIME, ' ', '" ', '') . '\diff"'
    endif
  else
    let cmd = $VIMRUNTIME . '\diff'
  endif
  silent execute '!' . cmd . ' ' . opt . arg1 . ' ' . arg2 . ' > ' . arg3 . eq
endfunction

set tabstop=4
set shiftwidth=4
set expandtab
set showcmd
set number
set nobackup
set ruler
" set mouse=a
set autoindent
filetype on
filetype indent on
filetype plugin indent on

" 定义快捷键的前缀，即<Leader>
let mapleader=";"
" 让配置变更立即生效
autocmd BufWritePost $MYVIMRC source $MYVIMRC
" 开启实时搜索功能
set incsearch
" 搜索时大小写不敏感
set ignorecase
" 关闭兼容模式
set nocompatible
" vim 自身命令行模式智能补全
set wildmenu

nmap <C-RIGHT> <C-W>l
nmap <C-LEFT> <C-W>h
nmap <C-UP> <C-W>k
nmap <C-DOWN> <C-W>j
nmap <C-h> <C-W>H
nmap <C-j> <C-W>J
nmap <C-k> <C-W>K
nmap <C-l> <C-W>L

imap <C-RIGHT> <C-W>l
imap <C-LEFT> <C-W>h
imap <C-UP> <C-W>k
imap <C-DOWN> <C-W>j
imap <C-h> <C-W>H
imap <C-j> <C-W>J
imap <C-k> <C-W>K
imap <C-l> <C-W>L

" 配色方案
set background=dark
colorscheme evening
" colorscheme molokai  " tomasr/molokai
" colorscheme phd

" 总是显示状态栏
set laststatus=2
" 高亮显示当前行/列
set cursorline
set cursorcolumn
" 高亮显示搜索结果
set hlsearch

" 开启语法高亮功能
syntax enable
" 允许用指定语法高亮配色方案替换默认方案
syntax on


" imap [ []<LEFT>
" imap ( ()<LEFT>
" imap () ()
" imap {<CR> {}<LEFT><CR><CR><UP><TAB>

imap { {}<LEFT> <CR><UP><ESC>$a

imap <Leader>; <ESC>:w<CR>
imap <Leader>' <ESC>:wq<CR>
imap <Leader>] <ESC>:w<CR> :!gdb %< -q <CR>
imap <Leader>[ <ESC>:w<CR> :!g++ % -o %< -g -Wall -DLOCAL<CR>
imap <Leader>\ <ESC>:w<CR> :!time ./%< <CR>
imap <Leader>in <ESC>:w<CR> :!vim in<CR>
imap <Leader>g :w<CR> :!gedit %<CR>

map <Leader>; :w<CR>
map <Leader>' :wq<CR>
map <Leader>] :w<CR> :!gdb %< -q <CR>
map <Leader>[ :w<CR> :!g++ % -o %<.exe -g -Wall -DLOCAL<CR>
map <Leader>\ :w<CR> :!%<.exe <CR>
map <Leader>in :w<CR> :!vim in<CR>
map <Leader>g :w<CR> :!gedit %<CR>