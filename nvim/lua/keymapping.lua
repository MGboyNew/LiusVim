vim.keybinds = { gmap = vim.api.nvim_set_keymap,
    bmap = vim.api.nvim_buf_set_keymap, dgmap = vim.api.nvim_del_keymap,
    dbmap = vim.api.nvim_buf_del_keymap, opts = {noremap = true, silent = true},
    opts = {noremap=true,silent=true}
}

function renaderKey(strType,keycommands,opts)
    for i= 1, #keycommands do
        local key,command = keycommands[i][1],keycommands[i][2]
         vim.keybinds.gmap(strType,key,command,opts)
    end
end

vim.keybinds.keyMapcommands = { 
    {'<Leader>w',':write<CR>'}, 
    {'<Leader>q',':quit!<CR>' },
    {'<Leader>s', ':split<CR>'},
    {'<Leader>vs', ':vsplit<CR>'},
    {'<Leader>jj', '<C-w>j'},
    {'<Leader>kk', '<C-w>k'},
    {'<Leader>hh', '<C-w>h'},
    {'<Leader>ll', '<C-w>l'},
    -- {'<Leader>t', ':tabnew<CR>'},
    {'<C-j>', ':resize +3<CR>'},
    {'<C-k>', ':resize -3<CR>'},
    {'<C-h>', ':vertical resize +3<CR>'},
    {'<C-l>', ':vertical resize -3<CR>'},
    {"<C-u>", "10k"},
    {"<C-d>", "10j"},
    {"H", "^"},
    {"L", "$"},
}
vim.keybinds.keyMapcommandsInnsert = {
    {"<A-k>", "<up>"},
    {"<A-j>", "<down>"},
    {"<A-h>", "<left>"}, {"<A-l>", "<right>"},
}
vim.keybinds.keyMapcommandsVisual = {
    { "H", "^"},
    { "L", "$"},
}
vim.keybinds.keyMapcommandsPlugin = {
    {'<C-b>',':NvimTreeToggle<CR>' },

    {'<A-.>',':BufferLineCycleNext<CR>' },
    {'<A-,>',':BufferLineCyclePrev<CR>' },
    {'<A->>',':BufferLineMoveNext<CR>' },
    {'<A-<>',':BufferLineMovePrev<CR>' },
    {'<A-1>',':BufferLineGoToBuffer 1<CR>' },
    {'<A-2>',':BufferLineGoToBuffer 2<CR>' },
    {'<A-3>',':BufferLineGoToBuffer 3<CR>' },
    {'<A-4>',':BufferLineGoToBuffer 4<CR>' },
    {'<A-5>',':BufferLineGoToBuffer 5<CR>' },
    {'<A-6>',':BufferLineGoToBuffer 6<CR>' },
    {'<A-7>',':BufferLineGoToBuffer 7<CR>' },
    {'<A-8>',':BufferLineGoToBuffer 8<CR>' },
    {'<A-9>',':BufferLineGoToBuffer 9<CR>' },

    {'<leader>ff',':lua require(\'telescope.builtin\').find_files()<cr>' },
    {'<leader>fg',':lua require(\'telescope.builtin\').live_grep()<cr>' },
    {'<leader>fb',':lua require(\'telescope.builtin\').buffers()<cr>' },
    {'<leader>fc',':lua require(\'telescope.builtin\').commands()<cr>' },
    {'<leader>fc',':lua require(\'telescope.builtin\').commands()<cr>' },





}

renaderKey('n',vim.keybinds.keyMapcommands,vim.keybinds.opts)           --普通模式下的快捷键映射
renaderKey('n',vim.keybinds.keyMapcommandsPlugin,vim.keybinds.opts)           --普通模式下插件的快捷键映射
renaderKey('i',vim.keybinds.keyMapcommandsInnsert,vim.keybinds.opts)    --插入模式下的快捷键映射
renaderKey('v',vim.keybinds.keyMapcommandsVisual,vim.keybinds.opts)     --可视模式下的快捷键映射


-- telescope的快捷键说明
-- <C-c>用于 telescope关闭
-- <C-x>往下拆分打开目标文件
-- <C-v>往旁边拆分打开目标文件
-- <C-d>在预览窗口向下滚动
-- <C-u>在预览窗口向上滚动
