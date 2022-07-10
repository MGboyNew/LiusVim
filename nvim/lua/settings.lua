vim.g.mapleader = ' '
-- 高亮
vim.o.filetype = "plugin"
vim.o.hlsearch = true
vim.o.relativenumber = true

-- 搜索
vim.o.incsearch = true
vim.o.ignorecase = true

-- 下划线和编辑竖线
vim.o.cursorline = true
vim.o.cursorcolumn = false

--  缩进
vim.o.tabstop = 4
vim.o.shiftwidth = 4
vim.o.expandtab = 4

-- 折叠
vim.o.smartindent = true
vim.o.cin = true
vim.o.showmatch = true


-- 自动写入和读取(文件改变)
vim.o.termguicolors = true
vim.o.autoread = true
vim.o.autowrite = true

-- 基本配置
vim.o.ai = true
vim.o.cindent = true
vim.o.si = true
vim.o.wrap = true
vim.o.sw = 4

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
-- vim.cmd [[au BufWinLeave *.java,*.py,*.js,*.html,*jsx,*.css,*.lua silent mkview]]
-- vim.cmd [[au BufWinEnter *.java,*.py,*.js,*.html,*jsx,*.css,*.lua silent loadview]]

vim.cmd [[let g:NERDTreeStatusline = '%#NonText#']]
