echo "QAQ"
set tabstop=2
set shiftwidth=2
set softtabstop=2
set expandtab
set showcmd
set number
set ruler
set autoindent

" set nobackup " 取消备份文件
" set mouse=a
filetype on
filetype indent on
filetype plugin indent on

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

imap jk <ESC>
set background=dark

" 总是显示状态栏
set laststatus=1
" 高亮显示当前行/列
" set cursorline
" set cursorcolumn
" 高亮显示搜索结果
" set hlsearch

" 开启语法高亮功能
syntax enable
" 允许用指定语法高亮配色方案替换默认方案
syntax on


" imap [ []<LEFT>
" imap ( ()<LEFT>
" imap () ()
" imap { {}<LEFT> <CR><UP><ESC>$a

imap {<CR> { }<LEFT><CR><CR><UP><TAB>
imap <Leader>; <ESC>:w<CR>
imap <Leader>' <ESC>:wq<CR>
map <Leader>; :w<CR>
map <Leader>' :wq<CR>

""""""""""""""""""""""
"Quickly Run
""""""""""""""""""""""
map <Leader>[ :call CompileRunGcc()<CR>
imap <Leader>[ <ESC>:w<CR> :call CompileRunGcc()<CR>
map <Leader>] :call Debug()<CR>
imap <Leader>] <ESC>:w<CR> :call Debug()<CR>
map <Leader>, :w<CR>:!oalj -i %<CR>
imap <Leader>, <ESC>:w<CR>:!oalj -i %<CR>

func! Debug()
  :w
if &filetype == 'cpp'
  :!clear && g++ % -o %<.run -g && cgdb -q ./%<.run && rm ./%<.run
endif
  endfunc

func! CompileRunGcc()
  :w
if &filetype == 'cpp'
  :!clear && g++ % -o %<.run && ./%<.run && rm ./%<.run
elseif &filetype == 'sh'
  :!clear && time bash %
elseif &filetype == 'python'
  :!clear && time python3 %
endif
  endfunc
