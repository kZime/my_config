" echo "(>^.^<)"
set tabstop=4
set shiftwidth=4
set softtabstop=4
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
            exec "!g++ % -o %<.run -g && gdb ./%<.run && rm ./%<.run"
elseif &filetype == 'cpp'
            exec "!g++ % -o %<.run -g && gdb ./%<.run && rm ./%<.run"
endif
    endfunc

func! CompileRunGcc()
    exec "w"
if &filetype == 'c'
            exec "!g++ % -o %<.run && time ./%<.run && rm ./%<.run"
elseif &filetype == 'cpp'
            exec "!g++ % -o %<.run && time ./%<.run && rm ./%<.run"
elseif &filetype == 'sh'
            :!time bash %
elseif &filetype == 'python'
            exec "!time python3 %"
elseif &filetype == 'html'
            exec "!chromium % &"
endif
    endfunc

" 手动复制粘贴用
" map <F3> :set nonumber<CR>:IndentLinesDisable<CR>
" map <F4> :set number<CR>:IndentLinesEnable<CR>

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
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-theme'
Plugin 'dyng/ctrlsf.vim'
Plugin 'terryma/vim-multiple-cursors' " <C-N> 快速选中下一个和已经选中的字符串相同的字符串
Plugin 'Shougo/vimproc.vim'
Plugin 'scrooloose/nerdcommenter'
Plugin 'Valloric/YouCompleteMe'
Plugin 'Yggdroot/indentLine'
call vundle#end()
filetype plugin indent on


" 安装方法
" :PluginInstall

" --------- 插件配置 ----------------- "

" -- Airline -- "
"" airline settings.

let g:airline_powerline_fonts = 1

if !exists('g:airline_symbols')
  let g:airline_symbols = {}
endif

let g:airline_left_sep = ''
let g:airline_left_alt_sep = ''
let g:airline_right_sep = ''
let g:airline_right_alt_sep = ''
let g:airline_symbols.branch = ''
let g:airline_symbols.readonly = ''
let g:airline_symbols.linenr = ''
let g:airline#extensions#tabline#enabled = 1
" show absolute file path in status line
let g:airline_section_c = '%<%F%m %#__accent_red#%{airline#util#wrap(airline#parts#readonly(),0)}%#__restore__#'
" show tab number in tab line
let g:airline#extensions#tabline#tab_nr_type = 1

" -- YCM -- "

"默认配置文件路径"
let g:ycm_global_ycm_extra_conf = '~/.vim/bundle/YouCompleteMe/third_party/ycmd/cpp/ycm/.ycm_extra_conf.py'
"打开vim时不再询问是否加载ycm_extra_conf.py配置"
let g:ycm_confirm_extra_conf=0
set completeopt=longest,menu
"是否开启语义补全"
let g:ycm_seed_identifiers_with_syntax=1
"是否在注释中也开启补全"
let g:ycm_complete_in_comments=0
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
" -- indentLine -- "

"缩进指示线"
let g:indentLine_char='┆'
let g:indentLine_enabled = 1
