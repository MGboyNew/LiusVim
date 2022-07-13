-- plugin
local function plugin(use)
    use {"wbthomason/packer.nvim"}

    use {"tpope/vim-surround"}

    -- 暂时添加, lsp支持--
    use "neovim/nvim-lspconfig" -- 自动提示插件
    use {
        "hrsh7th/nvim-cmp", -- 代码补全核心插件，下面都是增强补全的体验插件
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
            {"lukas-reineke/cmp-under-comparator"} -- 让补全结果的排序更加智能
            -- {"tzachar/cmp-tabnine", run = "./install.sh"} -- tabnine 源,提供基于 AI 的智能补全
        }
    }
    use "saadparwaiz1/cmp_luasnip" -- Snippets source for nvim-cmp
    use "L3MON4D3/LuaSnip" -- Snippets plugin
    use "williamboman/nvim-lsp-installer"
    use "tami5/lspsaga.nvim"
    use {"mfussenegger/nvim-lint"}
    -- 暂时添加--

    use {"nvim-treesitter/nvim-treesitter", run = ':TSUpdate'}
    use {"lukas-reineke/indent-blankline.nvim"}
    use {"akinsho/bufferline.nvim", tag = "*"}
    use {"kyazdani42/nvim-web-devicons"}
    use {"norcalli/nvim-colorizer.lua"}
    use {"nvim-lualine/lualine.nvim"}
    use {"kevinhwang91/nvim-hlslens"}
    use {"lewis6991/impatient.nvim"}
    use {"ethanholz/nvim-lastplace"}
    use {"ray-x/lsp_signature.nvim"}
    use {"kyazdani42/nvim-tree.lua"}
    use {"lewis6991/gitsigns.nvim"}
    use {"RRethy/vim-illuminate"} --突出显示相同字符
    use {"jiangmiao/auto-pairs"}
    use {"sbdchd/neoformat"}
    use {"catppuccin/nvim"}
    use {
        "nvim-telescope/telescope.nvim",
        requires = {
            "nvim-lua/plenary.nvim",
            "sharkdp/fd" -- 文件查找
        }
    }


end

-- config
local config = {
  display = {
      open_fn = function()
          return require('packer.util').float({ border = 'rounded' })
      end
  }
}

vim.cmd(
    [[
  augroup packer_user_config
    autocmd!
    autocmd BufWritePost plugins.lua source <afile> | PackerCompile
  augroup end
]]
)

return require('packer').startup({plugin,config = config})

--  use {"lewis6991/impatient.nvim"} -- 加快nvim的启动速度
--  use {"ethanholz/nvim-lastplace"} -- 上次退出的地方打开文件
--  use {"kevinhwang91/nvim-hlslens"} --显示所有的搜索
--  use {"ray-x/lsp_signature.nvim"} -- 方法签名
--  use {"sbdchd/neoformat"} -- 格式化
--  use {"kyazdani42/nvim-web-devicons"}
--  use {"kyazdani42/nvim-tree.lua"}
--  use {"nvim-lualine/lualine.nvim"}
--  use {"catppuccin/nvim"}
--  use {"akinsho/bufferline.nvim", tag = "*"}
--  use {"jiangmiao/auto-pairs"}
--  use {"RRethy/vim-illuminate"} --突出显示相同字符
--  use {"nvim-treesitter/nvim-treesitter", run = ':TSUpdate'}
--  use {"lukas-reineke/indent-blankline.nvim"}
--  use {"norcalli/nvim-colorizer.lua"}
