""""""""""""""""""""""""""""""
"""=>基本设置<="""
"""""""""""""""""""""""""""""

" 关闭vi的兼容模式,compatible 是使用vi模式的功能,但实际上vim更加强大
set nocompatible

"侦测文件类型
filetype on
"载入文件类型插件"
filetype plugin on
"为特定文件类型载入相关缩进文件"
filetype indent on

"当文件在外部被修改时，自动更新该文件,
set autoread

" 主要在搜索的时候起作用，比如:搜索abc时，_也会被认为时单词的本身，所以搜索abc也会搜索到abc_
set iskeyword+=_,$,@,%,#,-

"通过使用: commands命令，告诉我们文件的哪一行被改变过"
" set report=0

"开启新行时使用智能自动缩进
set smartindent
set cin
set showmatch

"在处理未保存或只读文件的时候，弹出确认"
set confirm

"置空错误铃声的终端代码"
set vb t_vb=

"隐藏工具栏"
set guioptions-=T

"隐藏菜单栏"
set guioptions-=m

"显示状态栏（默认值为1，表示无法显示状态栏）"
set laststatus=2

"状态行显示的内容"
set statusline=%F%m%r%h%w\ [FORMAT=%{&ff}]\ [TYPE=%Y]\ [POS=%l,%v][%p%%]\ %{strftime(\"%d/%m/%y\ -\ %H:%M\")}


"粘贴不换行问题的解决方法"
set pastetoggle=<F9>

"文件类型自动检测，代码智能补全"
set completeopt=longest,preview,menu

"共享剪切板"
set clipboard+=unnamed

"从不备份"
set nobackup
set noswapfile

"自动保存"
set autowrite

"显示中文帮助"
if version >= 603
        set helplang=cn
            set encoding=utf-8
endif

" 保存折叠,在对特定文件类型操作的时候
au BufWinLeave *.java,*.py,*.js,*.html,*jsx,*.css silent mkview
au BufWinEnter *.java,*.py,*.js,*.html,*jsx,*.css silent loadview


" set fillchars=vert:\|

