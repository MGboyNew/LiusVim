call plug#begin()

Plug 'folke/tokyonight.nvim', { 'branch': 'main' }          " 主题
Plug 'ryanoasis/vim-devicons'                               " 图标
Plug 'neoclide/coc.nvim', {'branch': 'release'}             " 补全
Plug 'vim-airline/vim-airline'                              " airline
Plug 'vim-airline/vim-airline-themes'                       " airline
Plug 'raimondi/delimitmate'                                 " 括号,引号等自动补全
Plug 'luochen1990/rainbow'                                  "彩虹括号
Plug 'preservim/tagbar'                                     " 替换了taglist
Plug 'tpope/vim-surround'                                   " 一个针对成对括号，引号的插件
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }         "Fzf
Plug 'junegunn/fzf.vim'                                     "Fzf

call plug#end()



