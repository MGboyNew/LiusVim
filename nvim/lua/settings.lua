vim.g.mapleader = ' '
-- 高亮
-- vim.o.filetype = "plugin"
vim.o.incsearch = true
vim.o.hlsearch = true
vim.o.relativenumber = true
vim.o.mouse = 'a'

-- 搜索
vim.o.incsearch = true
vim.o.ignorecase = true

-- 下划线和编辑竖线
vim.o.cursorline = true
vim.o.cursorcolumn = false

-- 折叠
vim.o.smartindent = true
vim.o.cin = true
vim.o.showmatch = true


-- 自动写入和读取(文件改变)
vim.o.termguicolors = true
vim.o.autoread = true
vim.o.autowrite = true

--  缩进 ,tabstop表示缩进宽度,shiftwidth表示一般模式和可视模式的缩进,expandtab表示将\t换为\s(空格) [http://xstarcd.github.io/wiki/vim/vim_indent.html]
vim.o.tabstop = 2
vim.o.shiftwidth = 2
vim.o.expandtab = true
vim.o.ai = true -- autoindent
vim.o.smartindent = true

vim.cmd [[filetype indent on]]
-- vim.o.si = true
-- vim.o.sw = 4


vim.o.wrap = true -- 允许换行

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
vim.cmd [[set helplang=cn]]

vim.cmd [[set guifont=dejaVu\ Sans\ MONO\ 10]]
vim.cmd [[set clipboard+=unnamed]]


-- 自动加载
-- vim.cmd [[au BufWinLeave *.java,*.py,*.js,*.html,*jsx,*.css,*.lua silent mkview]]
-- vim.cmd [[au BufWinEnter *.java,*.py,*.js,*.html,*jsx,*.css,*.lua silent loadview]]

vim.cmd [[let g:NERDTreeStatusline = '%#NonText#']]
