"========================
"=======tag bar的配置===
"========================
"golang的时候要用到tagbar, 需要安装gotags支持
"

"设置ctags的位置
let g:tagbar_ctags_bin="/usr/sbin/ctags"


"位置 显示右边
let g:tagbar_right=1

"位置 显示左边
" let g:tagbar_left=1

" 大小
let g:tagbar_width = 30

" 不显示冗余帮助信息
let g:tagbar_compact=1

"The number of spaces by which each level is indented. This allows making the display more compact or more spacious. 大致使目录前有indent
let g:tagbar_indent = 1


" 显示左边图标
let g:tagbar_iconchars = ['▶', '▼']  
" let g:tagbar_iconchars = ['▸', '▾']
" let g:tagbar_iconchars = ['▷', '◢']
" let g:tagbar_iconchars = ['+', '-']
