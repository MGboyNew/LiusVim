"加载插件
exe 'source' '~/.config/nvim/plugin/plugin_init.vim'

" 加载 colors 中的配置
for file in split(glob("~/.config/nvim/colors/*.vim"),"\n")
    exe 'source' file
endfor

" 加载container 文件的vim 配置
for file in split(glob("~/.config/nvim/container/*.vim"),'\n')
    exe 'source' file
endfor

