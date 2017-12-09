echo "OvO"
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
    exec "w"
if &filetype == 'c'
            exec "!g++ % -o %<.run -g; and cgdb -q ./%<.run; and rm ./%<.run"
elseif &filetype == 'cpp'
            exec "!g++ % -o %<.run -g; and cgdb -q ./%<.run; and rm ./%<.run"
endif
    endfunc

func! CompileRunGcc()
    exec "w"
if &filetype == 'c'
            exec "!g++ % -o %<.run; and ./%<.run; and rm ./%<.run"
elseif &filetype == 'cpp'
            exec "!g++ % -o %<.run; and ./%<.run; and rm ./%<.run"
elseif &filetype == 'haskell'
            exec "!ghc % -o %<.run; and ./%<.run"
elseif &filetype == 'sh'
            :!time bash %
elseif &filetype == 'python'
            exec "!time python3 %"
endif
    endfunc

" ------------------------------------ "
" 以下是插件相关
" 如果需要使用先 
" git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim


" vundle 环境设置
filetype off
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'VundleVim/Vundle.vim'
Plugin 'octol/vim-cpp-enhanced-highlight'
Plugin 'dyng/ctrlsf.vim'
Plugin 'terryma/vim-multiple-cursors' " <C-N> 快速选中下一个和已经选中的字符串相同的字符串
Plugin 'Shougo/vimproc.vim'
Plugin 'scrooloose/nerdcommenter'
Plugin 'Yggdroot/indentLine'
call vundle#end()
filetype plugin indent on


" 安装方法
" :PluginInstall

" --------- 插件配置 ----------------- "

" -- indentLine -- "

"缩进指示线"
let g:indentLine_char='┆'
let g:indentLine_enabled = 1
