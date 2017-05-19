set tabstop=4
set shiftwidth=4
set softtabstop=4
set showcmd
set number
set ruler
set mouse=a
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

" 配色方案
set background=dark
" colorscheme solarized
colorscheme molokai  " tomasr/molokai
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

imap { {}<LEFT><CR><UP><ESC>$a

imap <Leader>; <ESC>:w<CR>
imap <Leader>' <ESC>:wq<CR>
imap <Leader>] <ESC>:w<CR> :!gdb %< -q <CR>
imap <Leader>[ <ESC>:w<CR> :!g++ % -o %< -g -Wall<CR>
imap <Leader>\ <ESC>:w<CR> :!time ./%< <CR>
imap <Leader>in <ESC>:w<CR> :!vim in.txt<CR>
imap <Leader>g :w<CR> :!gedit %<CR>

map <Leader>; :w<CR>
map <Leader>' :wq<CR>
map <Leader>] :w<CR> :!gdb %< -q <CR>
map <Leader>[ :w<CR> :!g++ % -o %< -g -Wall<CR>
map <Leader>\ :w<CR> :!time ./%< <CR>
map <Leader>in :w<CR> :!vim in.txt<CR>
map <Leader>g :w<CR> :!gedit %<CR>


" ------------------------------------ "
" 以下是插件相关
" 如果需要使用先 
" git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim



"     " vundle 环境设置
"     filetype off
"     set rtp+=~/.vim/bundle/Vundle.vim
"     " vundle 管理的插件列表必须位于 vundle#begin() 和 vundle#end() 之间
"     call vundle#begin()
"     Plugin 'VundleVim/Vundle.vim'
"     Plugin 'tomasr/molokai'
"     Plugin 'Lokaltog/vim-powerline'
"     Plugin 'octol/vim-cpp-enhanced-highlight'
"     Plugin 'nathanaelkane/vim-indent-guides'
"     Plugin 'derekwyatt/vim-fswitch'
"     Plugin 'kshenoy/vim-signature'
"     Plugin 'vim-scripts/BOOKMARKS--Mark-and-Highlight-Full-Lines'
"     Plugin 'majutsushi/tagbar'
"     Plugin 'vim-scripts/DfrankUtil'
"     Plugin 'vim-scripts/vimprj'
"     Plugin 'dyng/ctrlsf.vim'
"     Plugin 'terryma/vim-multiple-cursors'
"     Plugin 'scrooloose/nerdcommenter'
"     Plugin 'SirVer/ultisnips'
"     Plugin 'derekwyatt/vim-protodef'
"     Plugin 'scrooloose/nerdtree'
"     Plugin 'fholgado/minibufexpl.vim'
"     Plugin 'gcmt/wildfire.vim'
"     Plugin 'sjl/gundo.vim'
"     Plugin 'Lokaltog/vim-easymotion'
"     Plugin 'suan/vim-instant-markdown'
"     Plugin 'lilydjwg/fcitx.vim'
"     " 插件列表结束
"     call vundle#end()
"     filetype plugin indent on


" 安装方法
" :PluginInstall
