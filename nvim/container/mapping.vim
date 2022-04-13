"""""""""""""""""""""""""""""""""""
"""=>快件键配置<="""
"""""""""""""""""""""""""""""""""""

let mapleader = "\<space>"
" 保存和退出
nnoremap <leader>q :q<CR>
nnoremap <leader>w :w<CR>


" 窗口的分割
nnoremap <leader>s :sp<CR>
nnoremap <leader>vs :vsp<CR>

" 窗口的移动 ctrl j k l
" nnoremap <leader>jj :sp<CR>  将c-w j换成ctrl-j
nnoremap <leader>jj <C-W>j
nnoremap <leader>kk <C-W>k
nnoremap <leader>hh <C-W>h
nnoremap <leader>ll <C-W>l

" 窗口大小的修改 Shift + j k h l
nnoremap <S-j> :resize +3<CR>
nnoremap <S-k> :resize -3<CR>
nnoremap <S-h> :vertical resize -3<CR>
nnoremap <S-l> :vertical resize +3<CR>

" 新建标签页, 和标签页的移动 按下mapleader键后 按指定顺序的组合键
nnoremap <leader>t :tabnew<CR>
" nnoremap <leader>tl :tabc<CR>
" nnoremap <leader>gn :tabn<CR>
" nnoremap <leader>gp :tabprevious<CR>
" nnoremap <leader>gf :tabfirst<CR>
" nnoremap <leader>gl :tablast<CR>

" buffer 的使用
nnoremap <silent> [b :bprevious<CR>
nnoremap <silent> ]b :bnext<CR>
nnoremap <silent> [bf :bfirst<CR>
nnoremap <silent> ]bl :blast<CR>


"""""""""""""""""""""""""""""""""""
"""=>插件<="""
"""""""""""""""""""""""""""""""""""
" 

" nertree
" nnoremap <C-B> :NERDTreeToggle<CR>

" tagbar 注意archlinux 还需安装ctags
nnoremap <C-T> :TagbarToggle<CR>

