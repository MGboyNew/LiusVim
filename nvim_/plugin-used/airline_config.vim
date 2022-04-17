""""""""""""""""""""""""""""
"""" > airline cofnig <"""""
""""""""""""""""""""""""""""

let g:airline#extensions#tabline#enabled = 1                  " 是否打开tabline
let g:airline_powerline_fonts = 1                             "这个是安装字体后 必须设置此项"
set laststatus=2                                              "永远显示状态栏

let g:airline#extensions#tabline#enabled=1                    "Smarter tab line: 显示窗口tab和buffer

"let g:airline#extensions#tabline#left_sep = ' '              "separater
"let g:airline#extensions#tabline#left_alt_sep = '|'          "separater
"let g:airline#extensions#tabline#formatter = 'default'       "formater
"
let g:airline_left_sep = '▶'
let g:airline_left_alt_sep = '❯'
let g:airline_right_sep = '◀'
let g:airline_right_alt_sep = '❮'
" let g:airline_symbols.linenr = '¶'                          " 加入报错
" let g:airline_symbols.branch = '⎇'

let g:airline_powerline_fonts = 1

if !exists('g:airline_symbols')
    let g:airline_symbols = {}
endif

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


