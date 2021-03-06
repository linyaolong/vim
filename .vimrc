""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Filename     : .vimrc
" Creator      : superlc320
" Created Time : 2016.04.22
" E-mail       : luocan14@gmail.com
" URL          : https://github.com/superlc320/.dotfiles
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Vundle Settings
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" Use the Vim's keyboard setting, not vi
set nocompatible              " be iMproved, required
" Close filetype detection
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

" The following are examples of different formats supported.
" Keep Plugin commands between vundle#begin/end.
" plugin on GitHub repo
""Plugin 'tpope/vim-fugitive'
" plugin from http://vim-scripts.org/vim/scripts.html
""Plugin 'L9'
" Git plugin not hosted on GitHub
""Plugin 'git://git.wincent.com/command-t.git'
" git repos on your local machine (i.e. when working on your own plugin)
""Plugin 'file:///home/gmarik/path/to/plugin'
" The sparkup vim script is in a subdirectory of this repo called vim.
" Pass the path to set the runtimepath properly.
""Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}
" Install L9 and avoid a Naming conflict if you've already installed a
" different version somewhere else.
""Plugin 'ascenator/L9', {'name': 'newL9'}

" solarized颜色主题
Plugin 'altercation/vim-colors-solarized'

" molokai颜色主题
Plugin 'tomasr/molokai' 

" C++语法增强高亮
Plugin 'octol/vim-cpp-enhanced-highlight'

" 头文件源文件切换
Plugin 'derekwyatt/vim-fswitch' 

" 快速打开文件
Plugin 'ctrlpvim/ctrlp.vim'

" 目录树
Plugin 'scrooloose/nerdtree'

" 为代码添加注释
Plugin 'scrooloose/nerdcommenter'

" 自动补全神器
" 安装后需要按照官网说明进行编译
" 支持语义补全部分需要仔细阅读
" 还需要配置.ycm_extra_conf.py
"Plugin 'Valloric/YouCompleteMe'

" 根据工程Makefile生成YCM的配置文件
Plugin 'rdnetto/YCM-Generator'

" 自动补全引号，括号
Plugin 'jiangmiao/auto-pairs'

" 改变一对标记，（括号，引号，XML标记，等等）
Plugin 'tpope/vim-surround'

" 自动格式化
" 注意需要自己安装format软件，指定路径
" C系语言用astyle
Plugin 'Chiel92/vim-autoformat'

" 状态栏
Plugin 'vim-airline/vim-airline'

" 状态栏主题
Plugin 'vim-airline/vim-airline-themes'

" 扩大缩小选定区域
Plugin 'terryma/vim-expand-region'

" 多标签
Plugin 'vim-scripts/minibufexplorerpp'

" taglist
Plugin 'vim-scripts/taglist.vim'

" cctree
Plugin 'vim-scripts/CCTree'

" winmanager
Plugin 'vim-scripts/winmanager'

" easymotion
"""Plugin 'easymotion/vim-easymotion'

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" General settings
" 通用设置
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" 打开文件类型检测
filetype on

" 根据不同的文件类型加载对应的插件
filetype plugin on

" 显示行号
set number

" 在所有模式中启用鼠标
set mouse=a

" Backspace
set backspace=indent,eol,start

" 使用Vim默认的语法高亮
syntax on

" 搜索结果高亮
set hlsearch

" 实时搜索
set incsearch

" 搜索时大小写不敏感
""set ignorecase

" za打开或关闭当前代码折叠
set foldmethod=indent

" 最大的折叠层级
set foldlevel=99

" 将当前行的对齐格式应用到新的下一行
set autoindent

" 缩进格式化时缩进4个字符
set shiftwidth=4

" 在插入模式下输入tab缩进4个字符
set tabstop=4

" 将4个连续空格视为一个tab，一次删除4个空格
set softtabstop=4

" 将tab扩展为空格
" 在Makefile中Tab有特殊意义，不应该被转换
" 按Ctrl+v,再按Tab，就不会被转换了
set expandtab

" 缩进C语言内嵌代码块
set cindent

" 为C程序提供自动缩进
set smartindent

" show mode
"set showmode

" show cmd
set showcmd

" set vim color = 256
set t_Co=256

" 设置切换粘贴状态快捷键
set pastetoggle=<F12>

" 设置复制粘贴系统剪切板
set clipboard=unnamedplus

" 设置字体为utf-8
set encoding=utf-8

" 文件不自动换行
"set nowrap

" vim命令行模式自动补全
set wildmenu

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" General shortcut settings
" 通用快捷键设置
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let g:rainbow_active = 1 "0 if you want to enable it later via :RainbowToggle"

" 将<Leader>定义为空格键
let mapleader = "\<Space>"

" 映射模式前缀
" nore: 非递归
" n:    在普通模式下生效
" v:    在可视模式下生效
" i:    在插入模式下生效
" c:    在EX命令模式下生效

" 键表
" <S-x>         Shift+x
" <C-x>         Ctrl+x
" <A-x>         Alt+x
" <F1>-<F12>    F1到F12功能键

" 保存当前文件
nnoremap <Leader>w :w<CR>

" 关闭当前文件
nnoremap <Leader>q :q<CR>

" 将选中文本块复制到系统剪切板
vnoremap <Leader>y "+y

" 将系统剪切板的内容粘贴到vim
nnoremap <Leader>p "+p

" 设置切换窗口快捷键
nnoremap <Leader>l <C-L>
nnoremap <C-H> <C-W><C-H>
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-W> <C-W><C-W>

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Compile and run settings
" 快速编译运行单个源程序
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" gcc compile and run C file
autocmd filetype c nnoremap <F9> :w<CR>:!gcc % -o %:r && ./%:r<CR>
autocmd filetype c nnoremap <F10> :w<CR>:!gcc % -g -o %:r && gdb %:r<CR>

" g++ compile and run c++ file
autocmd filetype cpp nnoremap <F9> :w<CR>:!g++ -std=c++11 % -o %:r && ./%:r<CR>
autocmd filetype cpp nnoremap <F10> :w<CR>:!g++ -std=c++11 % -g -o %:r && gdb %:r<CR>

" python3 run python file
""autocmd filetype python nnoremap <F9> :w<CR>:!python3 %<CR> 

" python  run python file
""autocmd filetype python nnoremap <F10> :w<CR>:!python %<CR> 

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Filetype settings
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" new file type
""au BufNewFile,BufRead   *.suffix    set filetype=new_file_type
au BufNewFile,BufRead   *.cc    set filetype=cpp
au BufNewFile,BufRead   *.hrp   set filetype=cpp

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" File Open settings
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" When open a file, always jump to the last cursor positon
if has("autocmd")
    autocmd BufReadPost *
    \ if line("'\"") > 0 && line ("'\"") <= line("$") |
    \   exe "normal! g'\"" | 
    \ endif
endif

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Solarized Theme settings
" https://github.com/altercation/vim-colors-solarized
" (S)颜色主题
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

set background=dark
let g:solarized_termcolors=256
"let g:rehash256=1
"colorscheme sienna_modified
colorscheme jellybeans_modified

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" molokai Theme settings
" https://github.com/tomasr/molokai 
" (S)颜色主题
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

"set background=dark
"let g:molokai_original=1
"let g:rehash256=1
"colorscheme molokai

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" vim-fswitch settings 
" (S)头文件源文件切换
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
nnoremap <silent> <Leader>a :FSHere<CR>

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" ctrlp settings 
" (S)快速打开文件
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" ctrlp过滤文件和文件夹类型
let g:ctrlp_custom_ignore = {
    \ 'dir': '\v[V]\.(git|hg|svn|rvm)$',
    \ 'file':'\v\.(zip|tar|tar.gz|so|o|pyc)',
    \ }

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" NERD tree settings
" https://github.com/scrooloose/nerdtree
" (S)目录树
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" open a NERDTree automatically when vim starts up
" vim启动时自动打开NERDTree, 并不需要
" autocmd vimenter * NERDTree

" open and close NERDTree
" 打开和关闭NERDTree快捷键
noremap <F3> :NERDTreeToggle<CR>

" close vim if the only window left open is a NERDTree
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif

let g:NERDTreeIgnore=['\.o', '\.swp']

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" NERD commenter settings
" https://github.com/scrooloose/nerdcommenter
" (A)快速注释
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" [count]<Leader>cc 注释当前行和选中行
" [count]<Leader>cn 注释当前行和选中行, forces nesting
" [count]<Leader>c<space> 反转当前行和选中行的注释状态，所有状态只和最上面一行状态有关
" [count]<Leader>cm 对被选区域用一对注释符进行注释，前面的注释对每一行都会添加注释
" [count]<Leader>ci 独立反转选中区域的注释状态，每行只和自己之前的状态有关
" [count]<Leader>cs 添加性感的注释，通常用于代码开头介绍部分
" [count]<Leader>cy 先复制选中部分，再cc
" <Leader>c$        注释当前光标到行尾的内容
" <Leader>cA        跳转到当前行尾添加注释，并进入插入模式
" <Leader>ca        切换注释的方式，比如: /**/和//
" <Leader>cl        左对齐
" <Leader>cb        左右对齐
" <Leader>cu        取消注释

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" YouCompleteMe settings
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" 设置ycm global配置文件路径
let g:ycm_global_ycm_extra_conf = '~/.vim/bundle/YouCompleteMe/third_party/ycmd/cpp/ycm/.ycm_extra_conf.py'
let g:ycm_global_ycm_extra_conf = '~/.dotfiles/.ycm_extra_conf.py'

" 关闭加载.ycm_extra_conf.py的提示
let g:ycm_confirm_extra_conf = 0
"
"" 从第1个键入字符就开始罗列匹配项
"let g:ycm_min_num_of_chars_for_completion = 1
"
"" 打开基于tags的引擎
"let g:ycm_collect_identifiers_from_tags_files = 1
"
"" 在注释输入中也能补全
"let g:ycm_complete_in_comments = 1
"
"" 在字符串输入中也能补全
"let g:ycm_complete_in_strings = 1
"
"" 注释和字符串中的文字不会被收入补全
"let g:ycm_collect_identifiers_from_comments_and_strings = 0
"
"" 语法关键字补全
"let g:ycm_seed_identifiers_with_syntax = 1
"
"" 补全之后关闭preview窗口
"let g:ycm_autoclose_preview_window_after_completion = 1

" 转到声明
nnoremap <leader>gl :YcmCompleter GoToDeclaration<CR>
" 转到定义
nnoremap <leader>gf :YcmCompleter GoToDefinition<CR>
" 转到定义或声明
nnoremap <leader>tt :YcmCompleter GoToDefinitionElseDeclaration<CR>

let g:ycm_error_symbol = '>>'
let g:ycm_warning_symbol = '>*'

" 打开YCM语法检查
"let g:ycm_show_diagnostics_ui = 0

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" vim-surround settings
" https://github.com/tpope/vim-surround
" (A)改变一对标记(引号，括号，XML标记)
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" "Hello world!"
" Press cs"'
" => 'Hello world!'
" Press cs'<q>
" => <q>Hello world!</q>
" Press cst"
" => "Hello world!"
" Press ds"
" => Hello world!
" 其余妙用，参见github

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" vim-autoformat settings
" ./install_astyle.sh
" (S)C++代码格式化
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" 自动格式化
noremap <F5> :Autoformat<CR>

" 关闭写文件时自动格式化
" au BufWrite * :Autoformat

" 使用astyple格式化代码
let g:formatterpath = ['/usr/bin/astyle']
let g:formatdef_my_custom_cpp = '"astyle --style=kr --pad-oper --indent-switches"'
let g:formatters_cpp = ['my_custom_cpp']

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" vim-airline settings 
" https://github.com/vim-airline/vim-airline
" (A)状态栏
" vim-airline-themes settings 
" https://github.com/vim-airline/vim-airline-themes
" (A)状态栏主题
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

let g:airline_theme='solarized'

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" auto-pairs settings 
" https://github.com/jiangmiao/auto-pairs
" (S)自动补全引号，括号
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" auto-pairs并不需要设置

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" vim-expand-region settings 
" https://github.com/jiangmiao/auto-pairs
" (S)扩大缩小选定区域
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" 默认+扩大选定区域
" 默认-缩小选定区域
" 自定义
" map K <Plug>(expand_region_expand)
" map J <Plug>(expand_region_shrink)

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" minibufexplorerpp settings 
" https://github.com/vim-scripts/minibufexplorerpp
" (S)多标签
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" 设置minibufexplorerpp窗口最大高度为2行
" let g:miniBufExplMaxSize = 2

" 下一个标签
nnoremap <silent> ) :bn<CR>
" 上一个标签
nnoremap <silent> ( :bp<CR>
" 关闭当前标签
nnoremap <silent> <Leader>d :bd<CR>

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" ctags settings 
" (B)系统已有ctags软件
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

noremap<F7> :!ctags -R --c++-kinds=+px --fields=+iaS --extra=+q <CR>
set tags+=tags;
set tags+=./tags;

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" cscope settings 
" (B)系统已有cscope软件
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

noremap <F8> :!cscope -Rbqk

"TODO 添加cscope设置

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" taglist settings 
" (B)显示taglist
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

nnoremap <F6> :TlistToggle<CR>

" 只展示一个文件的taglist
let Tlist_Show_One_File = 1
" 当taglist是最后一个窗口时自动退出
let Tlist_Exit_OnlyWindow = 1
" 在右边显示taglist窗口
let Tlist_Use_Right_Window = 1
" tag按名字排序
let Tlist_Sort_Type = "name"


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" ale settings 
" (S)
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"Plugin 'w0rp/ale'
"let g:ale_sign_column_always = 1
"let g:ale_sign_error = '✗'
"let g:ale_sign_warning = '⚡'
"let g:ale_linters = {
"\   'c++': ['clang'],
"\   'c': ['clang'],
"\   'python': ['flake8'],
"\}

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" tagbar settings 
" (S)
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"let g:tagbar_ctags_bin= '/usr/local/bin/ctags'
let g:tagbar_autofocus = 1
let g:tagbar_width = 30
noremap <F4> :TagbarToggle<CR>

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" winmanager settings 
" (S)
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" easymotion settings 
" (S)
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" yrankring settings 
" (S)
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
nmap <Leader>ys :YRShow<CR>
nmap <Leader>yc :YRClear<CR>

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" ident-guides settings 
" (S)
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let g:indent_guides_enable_on_vim_startup = 1 "添加行，vim启动时启用
let g:indent_guides_start_level = 1           "添加行，开始显示对齐线的缩进级别
let g:indent_guides_guide_size = 1            "添加行，对齐线的宽度，（1字符）
let g:indent_guides_tab_guides = 1            "添加行，对tab对齐的禁用
let g:indent_guides_auto_colors = 0
autocmd VimEnter,Colorscheme * :hi IndentGuidesOdd guibg=red ctermbg=3
autocmd VimEnter,Colorscheme * :hi IndentGuidesEven guibg=green ctermbg=4

"find the current
nmap sf "tyiw:grep --exclude=tags -nw <C-R>t *<CR><Esc>:cw<CR>

set ignorecase
imap <C-u> <ESC>gUiwea

:set grepprg=grep\ -nri\ --include=*.{cpp,h,hpp,hrp}
nmap <leader>] :gr! <c-r>=expand("<cword>")<cr> <cr>:copen<cr> 
nmap <leader>1 <C-[><C-K>/1:<cr><cr>
nmap <leader>2 <C-[><C-K>/2:<cr><cr>
nmap <leader>3 <C-[><C-K>/3:<cr><cr>
nmap <leader>4 <C-[><C-K>/4:<cr><cr>
nmap <leader>5 <C-[><C-K>/5:<cr><cr>
nmap <leader>6 <C-[><C-K>/6:<cr><cr>
nmap <leader>7 <C-[><C-K>/7:<cr><cr>
nmap <leader>8 <C-[><C-K>/8:<cr><cr>
nmap <leader>9 <C-[><C-K>/9:<cr><cr>
nmap <leader>0 <C-[><C-K>/10:<cr><cr>
nmap <leader>d1 <C-[><C-K>/1:<cr>dw<C-J>
nmap <leader>d2 <C-[><C-K>/2:<cr>dw<C-J>
nmap <leader>d3 <C-[><C-K>/3:<cr>dw<C-J>
nmap <leader>d4 <C-[><C-K>/4:<cr>dw<C-J>
nmap <leader>d5 <C-[><C-K>/5:<cr>dw<C-J>
nmap <leader>d6 <C-[><C-K>/6:<cr>dw<C-J>
nmap <leader>d7 <C-[><C-K>/7:<cr>dw<C-J>
nmap <leader>d8 <C-[><C-K>/8:<cr>dw<C-J>
nmap <leader>d9 <C-[><C-K>/9:<cr>dw<C-J>
nmap <leader>d0 <C-[><C-K>/10:<cr>dw<C-J>
nmap <leader>dd <C-[><C-K>dd<C-J>
"nmap <leader>v] :split|gr! <c-r>=expand("<cword>")<cr> <cr>:copen<cr>
