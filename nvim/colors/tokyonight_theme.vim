"""""""""""""""""""""""""""""
""""""""=设置主题=<""""""""""
"""""""""""""""""""""""""""""
let g:tokyonight_style = "day" " day 的时候时白色,storm 偏紫蓝色,night 是暗颜色
let g:tokyonight_italic_functions = 1
let g:tokyonight_sidebars = [ "qf", "vista_kind", "terminal", "packer" ]

" Change the "hint" color to the "orange" color, and make the "error" color bright red
let g:tokyonight_colors = {
  \ 'hint': 'orange',
  \ 'error': '#ff0000'
\ }

let g:airline_theme='violet' "选择主题

"通过判断tokyonight_style变量来控制的airline 主题
if tokyonight_style == "storm"
    let g:airline_theme='violet' "选择主题
elseif tokyonight_style == "day"
    let g:airline_theme='solarized' "选择主题
endif

" Load the colorscheme
colorscheme tokyonight
