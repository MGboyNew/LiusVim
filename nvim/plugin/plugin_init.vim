call plug#begin()

Plug 'folke/tokyonight.nvim', { 'branch': 'main' } " 主题

Plug 'preservim/nerdtree' " 文件树
Plug 'ryanoasis/vim-devicons' " 图标
Plug 'neoclide/coc.nvim', {'branch': 'release'} " 补全
Plug 'vim-airline/vim-airline' " airline
Plug 'vim-airline/vim-airline-themes' " airline
Plug 'mhinz/vim-startify' " 启动界面

Plug 'preservim/tagbar' " 替换了taglist
" Plug 'vim-scripts/taglist.vim' " tag list

Plug 'tpope/vim-surround' " 一个针对成对括号，引号的插件

call plug#end()
