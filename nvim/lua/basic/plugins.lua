local init_function = function()
   use'wbthomason/packer.nvim'

   use {"lewis6991/impatient.nvim"}

   use'neovim/nvim-lspconfig'            -- 自动提示插件
   use {
       "hrsh7th/nvim-cmp",  -- 代码补全核心插件，下面都是增强补全的体验插件
       requires = {
           {"onsails/lspkind-nvim"}, -- 为补全添加类似 vscode 的图标
           {"hrsh7th/vim-vsnip"}, -- vsnip 引擎，用于获得代码片段支持
           {"hrsh7th/cmp-vsnip"}, -- 适用于 vsnip 的代码片段源
           {"hrsh7th/cmp-nvim-lsp"}, -- 替换内置 omnifunc，获得更多补全
           {"hrsh7th/cmp-path"}, -- 路径补全
           {"hrsh7th/cmp-buffer"}, -- 缓冲区补全
           {"hrsh7th/cmp-cmdline"}, -- 命令补全
           {"f3fora/cmp-spell"}, -- 拼写建议
           {"rafamadriz/friendly-snippets"}, -- 提供多种语言的代码片段
           {"lukas-reineke/cmp-under-comparator"}, -- 让补全结果的排序更加智能
           {"tzachar/cmp-tabnine", run = "./install.sh"} -- tabnine 源,提供基于 AI 的智能补全
       }
   }

   use'saadparwaiz1/cmp_luasnip' -- Snippets source for nvim-cmp

   use'L3MON4D3/LuaSnip' -- Snippets plugin

   use"williamboman/nvim-lsp-installer"
   use"tami5/lspsaga.nvim"
   use {"mfussenegger/nvim-lint"}

   use {"sbdchd/neoformat"}

   -- view tree
   use {"liuchengxu/vista.vim"}

   -- 一个显示加载的插件
   -- use {"j-hui/fidget.nvim"}

   use {"ray-x/lsp_signature.nvim" }

   use'mfussenegger/nvim-jdtls'

   use "yianwillis/vimcdoc"
   use {'kevinhwang91/nvim-hlslens'}
   use {"ethanholz/nvim-lastplace"}
   --use {"rmagatti/auto-session",}
   use {"norcalli/nvim-colorizer.lua",}

   use { "mbbill/undotree" }

   use {
          'nvim-telescope/telescope.nvim',
      requires = { {'nvim-lua/plenary.nvim'} }
   }

   -- use {"rcarriga/nvim-notify"}

   --use{
   --    'vim-telescope/telescope.nvim',
   --    requires = { {'nvim-lua/plenary.nvim'} }
   --}
   
   use{
      'kyazdani42/nvim-tree.lua',
      requires = {
        'kyazdani42/nvim-web-devicons', -- optional, for file icon 
      }
    }
   
   use{
       'nvim-treesitter/nvim-treesitter',
       run = ':TSUpdate'
    }
   
   -- 显示tag 列表
   -- use'preservim/tagbar'
   -- 括号操作
   use'tpope/vim-surround'
   -- 光标聚焦区域高亮
   -- use'TaDaa/vimade'
   --   'romgrk/barbar.nvim' 
   -- 标签
   use{'akinsho/bufferline.nvim', tag = "*"}
   
   -- theme
   use'NTBBloodbath/doom-one.nvim'
   use'folke/tokyonight.nvim'

   use({
        "catppuccin/nvim",
        as = "catppuccin"
   })
   
   use'nvim-lualine/lualine.nvim'
   
   -- 自动完成括号
   use'jiangmiao/auto-pairs'
   
   -- indent blankline
   use"lukas-reineke/indent-blankline.nvim"
   use {
      'lewis6991/gitsigns.nvim',
      -- tag = 'release' -- To use the latest release
   }
end

local config =  {
            display = {
                open_fn = require("packer.util").float
            }
        }

local packer_ = require("packer").startup({init_function, config=config})

vim.cmd(
    [[
  augroup packer_user_config
    autocmd!
    autocmd BufWritePost plugins.lua source <afile> | PackerCompile
  augroup end
]]
)

return packer_
