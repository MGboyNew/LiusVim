require('config/nvim-keybing')
require('config/basic')

-- require('config/statusline')  本来使用来在nvimtree中禁用statusline的，但是lualine中找到了一个API可以警用

require('init-packer')

require('lsp/init-lsp')

require('plugin-config/nvim-tree-config')

require('plugin-config/nvim-treesitter-config')
-- require('plugin-config/nvim-nvim-ts-rainbow-config')

require('plugin-config/nvim-bufferline-config')
require('plugin-config/nvim-telescope-config')

-- theme
-- require('plugin-config/doom-one-config')
require('plugin-config/nvim-tokyonight-config')

-- statusline
require('plugin-config/nvim-lualine-config')
