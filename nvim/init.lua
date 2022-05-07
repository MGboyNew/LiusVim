require("basic.config")
require("basic.keybinds")
require("basic.plugins")
require("basic.settings")

require('impatient')

require('conf/nvim-lspconfig-config')
require('conf/nvim-snippets-config')
require('conf/nvim-lsp-installer-config')
require('conf/nvim-lspsaga-config')
-- require('conf/nvim-fidget-config')
require('conf/nvim-lsp_signature-config')
require('conf/nvim-cmp-config')
require('conf/nvim-neoformat-config')
require('conf/nvim-vista-config')

--require('lsp/nvim-nvim-cmp-config')

require('conf/nvim-tree-config')

require('conf/nvim-indent-blankline-config')

require('conf/nvim-treesitter-config')

-- require('plugin-config/nvim-nvim-ts-rainbow-config')
require('conf/nvim-bufferline-config')
require('conf/nvim-telescope-config')
require('conf/nvim-gitsigns-config')
require('conf/nvim-hlslens-config')
require('conf/nvim-lastplace-config')
-- require('conf/nvim-auto-session-config')
require('conf/nvim-colorizer-config')

require('conf/nvim-undotree-config')
-- require('conf/nvim-notify-config')

-- statusline
require('conf/nvim-lualine-config')
-- theme
require("conf/nvim-catppuccin-config")

-- require('conf/nvim-doom-one-config')
-- require('conf/nvim-tokyonight-config')



-- 是否透明背景
vim.g.background_transparency = true
