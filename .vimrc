set tabstop=4
set shiftwidth=4
set expandtab
set showcmd
set number
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
" colorscheme solarized
" colorscheme molokai  " tomasr/molokai
" colorscheme phd

" 总是显示状态栏
set laststatus=2
" 高亮显示当前行/列
" set cursorline
" set cursorcolumn
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
map <Leader>[ :w<CR> :!g++ % -o %< -g -Wall -DLOCAL<CR>
map <Leader>\ :w<CR> :!time ./%< <CR>
map <Leader>in :w<CR> :!vim in<CR>
map <Leader>g :w<CR> :!gedit %<CR>


" 手动复制粘贴用
map <F3> :set nonumber<CR>:IndentLinesDisable<CR>
map <F4> :set number<CR>:IndentLinesEnable<CR>

" ------------------------------------ "
" 以下是插件相关
" 如果需要使用先 
" git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim




" vundle 环境设置
filetype off
set rtp+=~/.vim/bundle/Vundle.vim
" vundle 管理的插件列表必须位于 vundle#begin() 和 vundle#end() 之间
call vundle#begin()
Plugin 'VundleVim/Vundle.vim'
Plugin 'Lokaltog/vim-powerline'
Plugin 'Valloric/YouCompleteMe'
Plugin 'octol/vim-cpp-enhanced-highlight'
Plugin 'nathanaelkane/vim-indent-guides'
Plugin 'dyng/ctrlsf.vim'
Plugin 'terryma/vim-multiple-cursors' " <C-N> 快速选中下一个和已经选中的字符串相同的字符串
Plugin 'Shougo/vimshell.vim'
Plugin 'Shougo/vimproc.vim'
Plugin 'scrooloose/nerdcommenter'
Plugin 'vim-scripts/DrawIt'
Plugin 'scrooloose/nerdtree'
Plugin 'Yggdroot/indentLine'
" 插件列表结束
call vundle#end()
filetype plugin indent on


" 安装方法
" :PluginInstall


" --------- 插件配置 ----------------- "

" -- YCM -- "

"默认配置文件路径"
let g:ycm_global_ycm_extra_conf = '~/.vim/bundle/YouCompleteMe/third_party/ycmd/cpp/ycm/.ycm_extra_conf.py'
"打开vim时不再询问是否加载ycm_extra_conf.py配置"
let g:ycm_confirm_extra_conf=0
set completeopt=longest,menu
"是否开启语义补全"
let g:ycm_seed_identifiers_with_syntax=1
"是否在注释中也开启补全"
let g:ycm_complete_in_comments=1
let g:ycm_collect_identifiers_from_comments_and_strings = 0
"开始补全的字符数"
let g:ycm_min_num_of_chars_for_completion=2
"补全后自动关机预览窗口"
let g:ycm_autoclose_preview_window_after_completion=1
" 禁止缓存匹配项,每次都重新生成匹配项"
let g:ycm_cache_omnifunc=0
"字符串中也开启补全"
let g:ycm_complete_in_strings = 1
"离开插入模式后自动关闭预览窗口"
autocmd InsertLeave * if pumvisible() == 0|pclose|endif

" -- NT -- "

"F2开启和关闭树"
map <F2> :NERDTreeToggle<CR>
let NERDTreeChDirMode=1
"显示书签"
let NERDTreeShowBookmarks=1
"设置忽略文件类型"
let NERDTreeIgnore=['\~$', '\.pyc$', '\.swp$']
"窗口大小"
let NERDTreeWinSize=25

" -- indentLine -- "

"缩进指示线"
let g:indentLine_char='┆'
let g:indentLine_enabled = 1
" -- indent_guide -- "

let g:indent_guides_auto_colors = 0
let g:indent_guides_guide_size = 1
autocmd VimEnter,Colorscheme * :hi IndentGuidesOdd  guibg=red   ctermbg=3
autocmd VimEnter,Colorscheme * :hi IndentGuidesEven guibg=green ctermbg=4
hi IndentGuidesOdd guibg=red ctermbg=3
hi IndentGuidesEven guibg=green ctermbg=4
