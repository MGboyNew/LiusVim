-- 保存和关闭
vim.api.nvim_set_keymap('n','<Leader>w',':write<CR>',{noremap=true,silent=true})
vim.api.nvim_set_keymap('n','<Leader>q',':quit<CR>',{noremap=true,silent=true})

-- 打开文件树
vim.api.nvim_set_keymap('n', '<C-b>', ':NvimTreeToggle<CR>',{noremap=true,silent=true})

-- 标签栏操作

vim.api.nvim_set_keymap('n', '<A-,>', ':BufferLineCycleNext<CR>', { noremap = true, silent = true })

vim.api.nvim_set_keymap('n', '<A-.>', ':BufferLineCycleNext<CR>',{ noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<A->>', ':BufferLineMoveNext<CR>',{ noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<A-<>', ':BufferLineMovePrev<CR>',{ noremap = true, silent = true })

vim.api.nvim_set_keymap('n', '<A-1>', ':BufferLineGoToBuffer 1<CR>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<A-2>', ':BufferLineGoToBuffer 2<CR>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<A-3>', ':BufferLineGoToBuffer 3<CR>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<A-4>', ':BufferLineGoToBuffer 4<CR>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<A-5>', ':BufferLineGoToBuffer 5<CR>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<A-6>', ':BufferLineGoToBuffer 6<CR>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<A-7>', ':BufferLineGoToBuffer 7<CR>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<A-8>', ':BufferLineGoToBuffer 8<CR>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<A-9>', ':BufferLineGoToBuffer 9<CR>', { noremap = true, silent = true })

