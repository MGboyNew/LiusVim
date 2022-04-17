vim.g.mapleader = ' '



-- 显示行号
vim.o.relativenumber = true
vim.o.number = true

-- 搜索忽略项
vim.o.hlsearch = true
vim.o.incsearch = true
vim.o.ignorecase = true

-- 光标上下左右线
vim.o.cursorline = true
vim.o.cursorcolumn= true

-- 缩进为tab
vim.o.tabstop = 4
vim.o.shiftwidth = 4
vim.o.expandtab = 4

vim.o.smartindent = true
vim.o.cin = true
vim.o.showmatch = true

vim.o.termguicolors = true
vim.o.cursorline = true

-- 自动保存和读取
vim.o.autoread = true
vim.o.autowrite = true


-- 确认
vim.o.confirm = true

-- 基础设置
vim.cmd [[set ai]]
vim.cmd [[set cindent]]
vim.cmd [[set si]]
vim.cmd [[set wrap]]
vim.cmd [[set sw=4]]
vim.cmd [[set guifont=dejaVu\ Sans\ MONO\ 10]]
vim.cmd [[set clipboard+=unnamed]]

-- 设置编码
vim.cmd [[set encoding=utf-8]]
vim.cmd [[set fencs=utf-8,ucs-bom,shift-jis,gb18030,gbk,gb2312,cp936]]
vim.cmd [[set fileencodings=utf-8]]
vim.cmd [[set termencoding=utf-8]]
vim.cmd [[set langmenu=zh_CN.UTF-8]]
vim.cmd [[set helplang=cn]]


-- 代码折叠
vim.cmd [[set foldenable]]
vim.cmd [[set foldmethod=manual]]
vim.cmd [[set foldcolumn=0]]
vim.cmd [[setlocal foldlevel=3]]

vim.cmd [[set wildmenu]]
vim.cmd [[set ruler]]
vim.cmd [[set cmdheight=1]]

vim.cmd [[set lz]]
vim.cmd [[set backspace=eol,start,indent]]

vim.cmd [[set whichwrap+=<,>,h,l]]

vim.cmd [[set magic]]

vim.cmd [[set showmatch]]
vim.cmd [[set mat=2]]

vim.cmd [[set scrolloff=3]]

vim.cmd [[set nobackup]]
vim.cmd [[set noswapfile]]


-- 自动加载
vim.cmd [[au BufWinLeave *.java,*.py,*.js,*.html,*jsx,*.css silent mkview]]
vim.cmd [[au BufWinEnter *.java,*.py,*.js,*.html,*jsx,*.css silent loadview]]

vim.cmd [[let g:NERDTreeStatusline = '%#NonText#']]
