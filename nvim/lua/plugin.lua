-- plugin
function plugin(use) 
    use {"wbthomason/packer.nvim"}
    use {"kyazdani42/nvim-web-devicons"}
    use {"kyazdani42/nvim-tree.lua"}
    use {"nvim-lualine/lualine.nvim"}
    use {"catppuccin/nvim"}
    use {"akinsho/bufferline.nvim", tag = "*"}
    use {"jiangmiao/auto-pairs"}
    use {"RRethy/vim-illuminate"} --突出显示相同字符
    use {"nvim-treesitter/nvim-treesitter", run = ':TSUpdate'}
    use {"lukas-reineke/indent-blankline.nvim"}
    use {"norcalli/nvim-colorizer.lua"}

    -- coc
    -- use {'neoclide/coc.nvim', branch = 'release'}
    -- lsp
    use {"neovim/nvim-lspconfig"} -- offical lsp 
    use {"williamboman/nvim-lsp-installer"} -- 安装lsp server
    use {
      "hrsh7th/nvim-cmp",--自动完成代码
      "hrsh7th/cmp-nvim-lsp",--弹出的提示
      "hrsh7th/cmp-path", -- 路径
    } 

    use {
        "nvim-telescope/telescope.nvim",
        requires = {
            "nvim-lua/plenary.nvim",
            "sharkdp/fd" -- 文件查找
        }
    }


end

-- config
config = {
  display = {
      open_fn = function()
          return require('packer.util').float({ border = 'rounded' })
      end
  }
}

return require('packer').startup({plugin,config = config})
