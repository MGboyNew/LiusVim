""""""""""""""""""""""""""""""
""""""""">tag bar config<""""""

""""""""""""""""""""""""""""""

let g:tagbar_ctags_bin="/usr/sbin/ctags"            "设置ctags的位置
let g:tagbar_right=1                                "位置 显示右边
" let g:tagbar_left=1                               "位置 显示左边
let g:tagbar_width = 30                             " 宽度



let g:tagbar_compact=1                              " 不显示冗余帮助信息

let g:tagbar_indent = 1                             " 缩进相关



let g:tagbar_iconchars = ['▶', '▼']                 " 显示左边图标
" let g:tagbar_iconchars = ['▸', '▾']
" let g:tagbar_iconchars = ['▷', '◢']
" let g:tagbar_iconchars = ['+', '-']

" nnoremap <C-T> :TagbarToggle<CR>


"""""""""""""""">说明<"""""""""""""""
" 1. golang的时候要用到tagbar, 需要安装gotags支持 " 
" 2. 注意archlinux 还需安装ctags "
