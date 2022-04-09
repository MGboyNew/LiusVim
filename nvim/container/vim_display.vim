""""""""""""""""""""""""""""""""""
"""=>Vim 界面<="""
""""""""""""""""""""""""""""""""""
"增强模式中的命令行自动完成操作"
set wildmenu

"显示标尺"
set ruler

"设置命令行的高度"
set cmdheight=1

"显示行数"
set nu

"不要图形按钮"
set go=

"在执行宏命令时，不进行显示重绘；在宏命令执行完成后，一次性重绘，以便提高性能"
set lz

"使回格键（backspace）正常处理indent, eol, start等"
set backspace=eol,start,indent

"允许空格键和光标键跨越行边界"
set whichwrap+=<,>,h,l

"设置魔术"
set magic

"关闭遇到错误时的声音提示"
"关闭错误信息响铃"
set noerrorbells

"关闭使用可视响铃代替呼叫"
set novisualbell

"高亮显示匹配的括号([{和}])"
set showmatch

"匹配括号高亮的时间（单位是十分之一秒）"
set mat=2

"光标移动到buffer的顶部和底部时保持3行距离"
set scrolloff=3

"搜索逐字符高亮"
set hlsearch
set incsearch

"搜索时不区分大小写"
"还可以使用简写（“:set ic”和“:set noic”）"
set ignorecase

"输入的命令显示出来，看的清楚"
set showcmd

" 设置行数显示
set number
set relativenumber

" 自动开启语法高亮
syntax enable

" 识别颜色
set t_Co=256

"高亮显示当前行
set cursorline
set cursorcolumn

