vim.g.mapleader = ' '

--  一个map函数
local map = function(key)
  -- get the extra options
  local opts = {noremap = true}
  for i, v in pairs(key) do
    if type(i) == 'string' then opts[i] = v end
  end

  -- basic support for buffer-scoped keybindings
  local buffer = opts.buffer
  opts.buffer = nil

  if buffer then
    vim.api.nvim_buf_set_keymap(0, key[1], key[2], key[3], opts)
  else
    vim.api.nvim_set_keymap(key[1], key[2], key[3], opts)
  end
end


vim.keybinds = {
    gmap = vim.api.nvim_set_keymap,
    bmap = vim.api.nvim_buf_set_keymap,
    dgmap = vim.api.nvim_del_keymap,
    dbmap = vim.api.nvim_buf_del_keymap,
    opts = {noremap = true, silent = true}
}

-- 写入和写出
vim.keybinds.gmap('n', '<Leader>w', ':write<CR>',vim.keybinds.opts)
vim.keybinds.gmap('n', '<Leader>q', ':quit<CR>',vim.keybinds.opts)

-- 拆分
vim.keybinds.gmap('n', '<Leader>s', ':split<CR>',vim.keybinds.opts)
vim.keybinds.gmap('n', '<Leader>vs', ':vsplit<CR>',vim.keybinds.opts)

-- 移动
vim.keybinds.gmap('n', '<Leader>jj', '<C-w>j',vim.keybinds.opts)
vim.keybinds.gmap('n', '<Leader>kk', '<C-w>k',vim.keybinds.opts)
vim.keybinds.gmap('n', '<Leader>hh', '<C-w>h',vim.keybinds.opts)
vim.keybinds.gmap('n', '<Leader>ll', '<C-w>l',vim.keybinds.opts)

-- 大小调整
vim.keybinds.gmap('n', '<C-j>', ':resize +3<CR>',vim.keybinds.opts)
vim.keybinds.gmap('n', '<C-k>', ':resize -3<CR>',vim.keybinds.opts)
vim.keybinds.gmap('n', '<C-h>', ':vertical resize +3<CR>',vim.keybinds.opts)
vim.keybinds.gmap('n', '<C-l>', ':vertical resize -3<CR>',vim.keybinds.opts)
-- 新标签页
vim.keybinds.gmap('n', '<Leader>t', ':tabnew',vim.keybinds.opts)

-- 用H和L代替^$
vim.keybinds.gmap("n", "H", "^", vim.keybinds.opts)
vim.keybinds.gmap("v", "H", "^", vim.keybinds.opts)
vim.keybinds.gmap("n", "L", "$", vim.keybinds.opts)
vim.keybinds.gmap("v", "L", "$", vim.keybinds.opts)

-- 将 C-u 和 C-d 调整为上下滑动 10 行而不是半页    
vim.keybinds.gmap("n", "<C-u>", "10k", vim.keybinds.opts)    
vim.keybinds.gmap("n", "<C-d>", "10j", vim.keybinds.opts)    
    
-- 插入模式下的上下左右移动    
vim.keybinds.gmap("i", "<A-k>", "<up>", vim.keybinds.opts)    
vim.keybinds.gmap("i", "<A-j>", "<down>", vim.keybinds.opts)    
vim.keybinds.gmap("i", "<A-h>", "<left>", vim.keybinds.opts)    
vim.keybinds.gmap("i", "<A-l>", "<right>", vim.keybinds.opts)
-- 文件目录
vim.keybinds.gmap('n', '<C-b>', ':NvimTreeToggle<CR>',vim.keybinds.opts)

-- 标签目录
--vim.keybinds.gmap('n', '<C-t>', ':TagbarToggle<CR>',vim.keybinds.opts)

-- 用H和L代替^$
vim.keybinds.gmap("n", "H", "^", vim.keybinds.opts)
vim.keybinds.gmap("v", "H", "^", vim.keybinds.opts)
vim.keybinds.gmap("n", "L", "$", vim.keybinds.opts)
vim.keybinds.gmap("v", "L", "$", vim.keybinds.opts)
