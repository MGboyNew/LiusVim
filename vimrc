" auther liusnew
" date 2021-11-26:0:35

"""""""""""""""""""""""""""""""""""
"""=>全局配置<="""
let mapleader = "\<space>"
"""""""""""""""""""""""""""""""""""

"关闭vi兼容模式"
set nocompatible
autocmd BufEnter *.{js,jsx,ts,tsx} :syntax sync fromstart
autocmd BufLeave *.{js,jsx,ts,tsx} :syntax sync clear
"设置历史记录步数"
set history=1000

"开启相关插件"
"侦测文件类型"
filetype on
"载入文件类型插件"
filetype plugin on
"为特定文件类型载入相关缩进文件"
filetype indent on

"当文件在外部被修改时，自动更新该文件"
set autoread

"带有如下符号的单词不要被换行分割"
set iskeyword+=_,$,@,%,#,-

"通过使用: commands命令，告诉我们文件的哪一行被改变过"
set report=0

"被分割的窗口间显示空白，便于阅读"
" set fillchars=vert:\ ,stl:\ ,stlnc:\

" 基础配置
syntax on
"  显示行号
set number
set relativenumber

""""""""""""""""""""""""""""
" 分割窗口
""""""""""""""""""""""""""""
" 窗口分割
nnoremap <leader>s :sp<CR>
nnoremap <leader>vs :vsp<CR>

nnoremap <C-j> <C-W>j
nnoremap <C-k> <C-w>k
nnoremap <C-h> <C-W>h
nnoremap <C-l> <C-W>l

map <S-j> :resize +3<CR>
map <S-k> :resize -3<CR>
map <S-h> :vertical resize -3<CR>
map <S-l> :vertical resize +3<CR>


" 退出vim
nnoremap <leader>q :q<CR>
nnoremap <leader>w :w<CR>

""""""""""""""""""""""""""""""""""""
" tab and buffer
""""""""""""""""""""""""""""""""""""

" new tab 
nnoremap <leader>t :tabnew<CR>
"nnoremap <leader>tk  :tabnext<CR>

"buffer
nnoremap <silent> [b :bprevious<CR>
nnoremap <silent> ]b :bnext<CR>
nnoremap <silent> [B :bfirst<CR>
nnoremap <silent> ]B :blast<CR> "

" 切换是否显示行号
nnoremap <leader>hh :set nu! nu?<CR>

"""""""""""""""""""""""""""""""""
"""=>字体和颜色<="""
"""""""""""""""""""""""""""""""""
"自动开启语法高亮"
syntax enable
"设置颜色"
"colorscheme desert
"
"设置字体"
"set guifont=dejaVu\ Sans\ MONO\ 10
set guifont=Courier_New:h10:cANSI

"设置颜色"
"colorscheme desert

"高亮显示当前行"
set cursorline
hi cursorline guibg=#00ff00
hi CursorColumn guibg=#00ff00

" 设置高亮效果
hi CursorLine term=bold cterm=bold ctermbg=Red

"""""""""""""""""""""""""""""""
"""=>代码折叠功能<="""
"""""""""""""""""""""""""""""""

"激活折叠功能"
set foldenable
"set nofen（这个是关闭折叠功能）"

"设置按照语法方式折叠（可简写set fdm=XX）"
"有6种折叠方法：
"manual   手工定义折叠"
"indent   更多的缩进表示更高级别的折叠"
"expr     用表达式来定义折叠"
"syntax   用语法高亮来定义折叠"
"diff     对没有更改的文本进行折叠"
"marker   对文中的标志进行折叠"
set foldmethod=manual
"set fdl=0（这个是不选用任何折叠方法）"

"设置折叠区域的宽度"
"如果不为0，则在屏幕左侧显示一个折叠标识列
"分别用“-”和“+”来表示打开和关闭的折叠
set foldcolumn=0

"设置折叠层数为3"
setlocal foldlevel=3

"设置为自动关闭折叠"
"set foldclose=all

"用空格键来代替zo和zc快捷键实现开关折叠"
"zo O-pen a fold (打开折叠)
"zc C-lose a fold (关闭折叠)
"zf F-old creation (创建折叠)
"nnoremap <space> @=((foldclosed(line('.')) < 0) ? 'zc' : 'zo')<CR>

"""""""""""""""""""""""""""""""""""
"""=>文字处理<="""
"""""""""""""""""""""""""""""""""""
"使用空格来替换Tab"
set expandtab

"设置所有的Tab和缩进为4个空格"
set tabstop=4

"设定<<和>>命令移动时的宽度为4"
set shiftwidth=4

"使得按退格键时可以一次删除4个空格"
set softtabstop=4
set smarttab

"缩进，自动缩进（继承前一行的缩进）"
"set autoindent 命令打开自动缩进，是下面配置的缩写
"可使用autoindent命令的简写，即“:set ai”和“:set noai”
"还可以使用“:set ai sw=4”在一个命令中打开缩进并设置缩进级别
set ai
set cindent


"智能缩进"
set si

"自动换行”
set wrap
"设置软宽度"
set sw=4

"行内替换"
set gdefault

""""""""""""""""""""""""""""""""""
"""=>Vim 界面<="""
""""""""""""""""""""""""""""""""""
"增强模式中的命令行自动完成操作"
set wildmenu
"显示标尺"
set ruler

"设置命令行的高度"
set cmdheight=1

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

"用浅色高亮显示当前行"
" autocmd InsertLeave * se nocul
" autocmd InsertEnter * se cul

"输入的命令显示出来，看的清楚"
set showcmd


""""""""""""""""""""""""""""""""""""
"""=>编码设置<="""
""""""""""""""""""""""""""""""""""""
"设置编码"
set encoding=utf-8
set fencs=utf-8,ucs-bom,shift-jis,gb18030,gbk,gb2312,cp936

"设置文件编码"
set fileencodings=utf-8

"设置终端编码"
set termencoding=utf-8

"设置语言编码"
set langmenu=zh_CN.UTF-8
set helplang=cn


"""""""""""""""""""""""""""""
"""=>其他设置<="""
"""""""""""""""""""""""""""""

"开启新行时使用智能自动缩进"
set smartindent
set cin
set showmatch

"在处理未保存或只读文件的时候，弹出确认"
set confirm
"隐藏工具栏"
set guioptions-=T

"隐藏菜单栏"
set guioptions-=m


"用浅色高亮当前行
autocmd InsertEnter * se cul

"置空错误铃声的终端代码"
set vb t_vb=
"显示状态栏（默认值为1，表示无法显示状态栏）"
set laststatus=2

"文件类型自动检测，代码智能补全"
" set completeopt=longest,preview,menu

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

"设置高亮相关项"
highlight Search ctermbg=black ctermfg=white guifg=white guibg=black 



""""""""""""""""""""""""""""""""
"""=>在shell脚本开头自动增加解释器以及作者等版权信息<="""
""""""""""""""""""""""""""""""""
"新建.py,.cc,.sh,.java文件，自动插入文件头"
autocmd BufNewFile *.py,*.cc,*.sh,*.java exec ":call SetTitle()"
"定义函数SetTitle，自动插入文件头"
func SetTitle()
    if expand ("%:e") == 'sh'
        call setline(1, "#!/bin/bash")
        call setline(2, "#Author:Liusnew")
        call setline(4, "#Time:".strftime("%F %T"))
        call setline(5, "#Name:".expand("%"))
        call setline(6, "#Version:V1.0")
    endif
endfunc



""""""""""""""""""""""""""""""""""""""""""""""""
" VundleVim
""""""""""""""""""""""""""""""""""""""""""""""""
set nocompatible              " be iMproved, required
filetype off                  " required


" 设置包括vundle和初始化相关的运行时路径"
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

"启用vundle管理插件，必须"
Plugin 'VundleVim/Vundle.vim'
" Plugin 'dracula/vim', { 'name': 'dracula' }
" Plugin 'sainnhe/lightline_foobar.vim'
Plugin 'ghifarit53/tokyonight-vim' "theme
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'preservim/nerdtree'
Plugin 'neoclide/coc.nvim', {'branch': 'release'}
Plugin 'tell-k/vim-autopep8'
Plugin 'pangloss/vim-javascript'
Plugin 'leafgarland/typescript-vim'
Plugin 'peitalin/vim-jsx-typescript'
Plugin 'mhinz/vim-startify'
Plugin 'jiangmiao/auto-pairs'
Plugin 'ryanoasis/vim-devicons'
Plugin 'prettier/vim-prettier', {
  \ 'do': 'yarn install --frozen-lockfile --production',
  \ 'for': ['javascript', 'typescript', 'css', 'less', 'scss', 'json', 'graphql', 'markdown', 'vue', 'svelte', 'yaml', 'html','tsx','jsx'] }

Plugin 'styled-components/vim-styled-components', { 'branch': 'main' }
Plugin 'jparise/vim-graphql'

" css and sass
Plugin 'JulesWang/css.vim' " only necessary if your Vim version < 7.4
Plugin 'cakebaker/scss-syntax.vim'
call vundle#end()           
filetype plugin indent on    



""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" airline 的基本的配置
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" 把这几句配置加到函数外面任意地方：
" @airline
set t_Co=256      "在windows中用xshell连接打开vim可以显示色彩
let g:airline#extensions#tabline#enabled = 1   " 是否打开tabline
"这个是安装字体后 必须设置此项"
let g:airline_powerline_fonts = 1
set laststatus=2  "永远显示状态栏
let g:airline_theme='violet' "选择主题
let g:airline#extensions#tabline#enabled=1    "Smarter tab line: 显示窗口tab和buffer
"let g:airline#extensions#tabline#left_sep = ' '  "separater
"let g:airline#extensions#tabline#left_alt_sep = '|'  "separater
"let g:airline#extensions#tabline#formatter = 'default'  "formater
let g:airline_left_sep = '▶'
let g:airline_left_alt_sep = '❯'
let g:airline_right_sep = '◀'
let g:airline_right_alt_sep = '❮'
"let g:airline_symbols.linenr = '¶'
"let g:airline_symbols.branch = '⎇'

" air-line
let g:airline_powerline_fonts = 1

if !exists('g:airline_symbols')
    let g:airline_symbols = {}
endif

" unicode symbols
let g:airline_left_sep = '»'
let g:airline_left_sep = '▶'
let g:airline_right_sep = '«'
let g:airline_right_sep = '◀'
let g:airline_symbols.linenr = '␊'
let g:airline_symbols.linenr = '␤'
let g:airline_symbols.linenr = '¶'
let g:airline_symbols.branch = '⎇'
let g:airline_symbols.paste = 'ρ'
let g:airline_symbols.paste = 'Þ'
let g:airline_symbols.paste = '∥'
let g:airline_symbols.whitespace = 'Ξ'


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"NERDTREE  文件树
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
nnoremap <C-B> :NERDTreeToggle<CR>
"autocmd vimenter * NERDTree 自动开启
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif
nnoremap <C-B> :NERDTreeToggle<CR>
let NERDTreeWinPos='left'
let NERDTreeWinSize=24
let NERDTreeMinimalUI=1 "不显示帮助面板
let g:NERDTreeDirArrowExpandable = '▷' "修改树的显示图标
let g:NERDTreeDirArrowCollapsible = '▼'



let g:NERDTreeIndicatorMapCustom = {
    \ "Modified"  : "✹",
    \ "Staged"    : "✚",
    \ "Untracked" : "✭",
    \ "Renamed"   : "➜",
    \ "Unmerged"  : "═",
    \ "Deleted"   : "✖",
    \ "Dirty"     : "✗",
    \ "Clean"     : "✔︎",
    \ 'Ignored'   : '☒',
    \ "Unknown"   : "?"
    \ }



""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" https://thoughtbot.com/blog/modern-typescript-and-react-development-in-vim
" 基于这个网站的配置
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" 突出显示大文件
autocmd BufEnter *.{js,jsx,ts,tsx} :syntax sync fromstart
autocmd BufLeave *.{js,jsx,ts,tsx} :syntax sync clear

let g:coc_global_extensions = [
  \ 'coc-tsserver'
  \ ]

if isdirectory('./node_modules') && isdirectory('./node_modules/prettier')
  let g:coc_global_extensions += ['coc-prettier']
endif

if isdirectory('./node_modules') && isdirectory('./node_modules/eslint')
  let g:coc_global_extensions += ['coc-eslint']
endif


" Highlight the symbol and its references when holding the cursor. 当按住光标时，高亮显示该符号及其引用。
autocmd CursorHold * silent call CocActionAsync('highlight')

""""""""""""""""""""""""""""""""
" vim-startify 
" :h startify
" :h startify-faq
""""""""""""""""""""""""""""""""


"""""""""""""""""""""""""""""""""
" 设置背景颜色 
" now termguicolors
"""""""""""""""""""""""""""""""""

set termguicolors
let g:tokyonight_style = 'storm' " available: night, storm
let g:tokyonight_enable_italic = 1
let g:tokyonight_transparent_background= 1 "  设置背景的透明度
let g:tokyonight_menu_selection_background = 'blue' "设置背景的的颜色
" let g:tokyonight_cursor = 'blue' " 设置光标的颜色

colorscheme tokyonight

" colorscheme dracula

let g:airline_theme = "tokyonight"
let g:lightline = {'colorscheme' : 'tokyonight'}


"""""""""""""""""""""""""""""""""
" vim-startify https://codevion.github.io/#!vim/startify.md
"""""""""""""""""""""""""""""""""
"  修改进来的内容
let g:startify_custom_header = [
   \ '        ___   ___      ___      ___      ___      ___      ___          ___      ___     ___     ___          ',
   \ '       /\__\ /\  \    /\__\    /\  \    /\__\    /\  \    /\__\        /\__\    /\  \    /\__\    /\  \         ',
   \ '      /:/  /_\:\  \  /:/ _/_  /::\  \  /:| _|_  /::\  \  /:/\__\      /:/__/_  /::\  \  /::L_L_  /::\  \        ', 
   \ '     /:/__//\/::\__\/:/_/\__\/\:\:\__\/::|/\__\/::\:\__\/:/:/\__\    /::\/\__\/:/\:\__\/:/L:\__\/::\:\__\       ',
   \ '     \:\  \\::/\/__/\:\/:/  /\:\:\/__/\/|::/  /\:\:\/  /\::/:/  /    \/\::/  /\:\/:/  /\/_/:/  /\:\:\/  /       ',
   \ '      \:\__\\:\__\   \::/  /  \::/  /   |:/  /  \:\/  /  \::/  /       /:/  /  \::/  /   /:/  /  \:\/  /        ',
   \ '       \/__/ \/__/    \/__/    \/__/    \/__/    \/__/    \/__/        \/__/    \/__/    \/__/    \/__/         ',
  \]

" 每次的输出都是不一样的
let g:startify_lists = [
      \ { 'header': ['   Bookmarks'],       'type': 'bookmarks' },
      \ { 'header': ['   MRU'],            'type': 'files' },
      \ { 'header': ['   MRU '. getcwd()], 'type': 'dir' },
      \ ]


""""""""""""""""""""""""""""""""""""""""""""""
" coc 
""""""""""""""""""""""""""""""""""""""""""""""
" if hidden is not set, TextEdit might fail. 设置自动隐藏
set hidden

" Some servers have issues with backup files, see #649  #主要是关于备份文件 
set nobackup
set nowritebackup

" Better display for messages 更好的信息显示
set cmdheight=2

" You will have bad experience for diagnostic messages when it's default 4000. 当默认值为4000时，诊断消息将会有糟糕的体验
set updatetime=300

" don't give |ins-completion-menu| messages. 要给|补全菜单|消息。
set shortmess+=c

" always show signcolumns 总是要有标志栏
set signcolumn=yes

" Use tab for trigger completion with characters ahead and navigate.
" "使用tab键完成前置字符并导航。
"使用命令':verbose imap '来确保标签没有被其他插件映射。
" Use command ':verbose imap <tab>' to make sure tab is not mapped by other plugin.
inoremap <silent><expr> <TAB>
      \ pumvisible() ? "\<C-n>" :
      \ <SID>check_back_space() ? "\<TAB>" :
      \ coc#refresh()
inoremap <expr><S-TAB> pumvisible() ? "\<C-p>" : "\<C-h>"

function! s:check_back_space() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~# '\s'
endfunction


function! s:show_documentation()
  if (index(['vim','help'], &filetype) >= 0)
    execute 'h '.expand('<cword>')
  else
    call CocAction('doHover')
  endif
endfunction

" Highlight symbol under cursor on CursorHold
autocmd CursorHold * silent call CocActionAsync('highlight')


augroup mygroup
  autocmd!
  " Setup formatexpr specified filetype(s).
  autocmd FileType typescript,json setl formatexpr=CocAction('formatSelected')
  " Update signature help on jump placeholder
  autocmd User CocJumpPlaceholder call CocActionAsync('showSignatureHelp')
augroup end


" Add status line support, for integration with other plugin, checkout `:h coc-status`
set statusline^=%{coc#status()}%{get(b:,'coc_current_function','')}
