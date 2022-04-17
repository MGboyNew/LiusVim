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



map {'n', '<Leader>w', ':write<CR>',noremap = false}
map {'n', '<Leader>q', ':quit<CR>',noremap = false}
map {'n', '<Leader>s', ':split<CR>',noremap = false}
map {'n', '<Leader>vs', ':vsplit<CR>',noremap = false}

map {'n', '<Leader>jj', '<C-w>j',noremap = false}
map {'n', '<Leader>kk', '<C-w>k',noremap = false}
map {'n', '<Leader>hh', '<C-w>h',noremap = false}
map {'n', '<Leader>ll', '<C-w>l',noremap = false}

map {'n', '<S-j>', ':resize +3<CR>',noremap = false}
map {'n', '<S-k>', ':resize -3<CR>',noremap = false}
map {'n', '<S-h>', ':vertical resize +3<CR>',noremap = false}
map {'n', '<S-l>', ':vertical resize -3<CR>',noremap = false}

map {'n', '<Leader>t', ':tabnew',noremap = false}

map {'n', '<C-b>', ':NvimTreeToggle<CR>',noremap = false}

map {'n', '<C-t>', ':TagbarToggle<CR>',noremap = false}


