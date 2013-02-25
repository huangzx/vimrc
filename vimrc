" 去掉边框
set go= 

" 设置配色，这里选择的是desert，也有其他方案，在vim中输入:color 在敲tab键可以查看
color desert 

" 设置背景色，每种配色有两种方案，一个light、一个dark 
set background=dark 

" 打开语法高亮 
syntax on 

" 显示行号 
set number 

" 设置缩进有三个取值cindent(c风格)、smartindent(智能模式，其实不觉得有什么智能)、autoindent(简单的与上一行保持一致) 
set autoindent

" 用空格键替换制表符 
set expandtab 

" 制表符占4个空格 
set tabstop=4 

" 默认缩进4个空格大小 
set shiftwidth=4 

" 增量式搜索 
set incsearch 

" 高亮搜索 
set hlsearch 

" 有时中文会显示乱码
let &termencoding=&encoding 
set fileencodings=utf-8,gbk 

" 很多插件都会要求的配置检测文件类型 
:filetype on 
:filetype plugin on 
:filetype indent on 

" 根据不同的文件类型执行不同的命令 
:autocmd FileType python :set number 
:autocmd FileType python :set foldmethod=syntax 
:autocmd FileType python :set autoindent 

" 补全设置，不设也能用
let Tlist_Ctags_Cmd='/usr/bin/ctags'
filetype plugin indent on
filetype plugin on
set ofu=syntaxcomplete#Complete

" 一旦一行的字符超出80个的话就把那些字符的背景设为红色
highlight OverLength ctermbg=red ctermfg=white guibg=#592929 
match OverLength /\%81v.\+/
