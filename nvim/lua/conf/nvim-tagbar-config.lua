--设置ctags的位置
vim.cmd [[let g:tagbar_ctags_bin="/usr/sbin/ctags"]]         

--位置 显示右边
vim.cmd [[let g:tagbar_right=1]]
--宽度
vim.cmd [[let g:tagbar_width = 30]]         

--不显示冗余帮助信息
vim.cmd [[let g:tagbar_compact=1]]         

--缩进相关
vim.cmd [[let g:tagbar_indent = 1]]
--显示左边图标
vim.cmd [[let g:tagbar_iconchars = ['▶', '▼']]]        
