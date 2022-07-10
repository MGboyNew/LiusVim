-- plugin
function plugin(use) 
    use {"wbthomason/packer.nvim"}
    use {"kyazdani42/nvim-web-devicons"}
    use {"kyazdani42/nvim-tree.lua"}
    use {"nvim-lualine/lualine.nvim"}
    use {"catppuccin/nvim"}
    use {"akinsho/bufferline.nvim", tag = "*"}
    use {"jiangmiao/auto-pairs"}
    use {"RRethy/vim-illuminate"}
    use {"nvim-treesitter/nvim-treesitter", run = ':TSUpdate'}
    use {"lukas-reineke/indent-blankline.nvim"}
    use {"norcalli/nvim-colorizer.lua"}
    use {"lewis6991/gitsigns.nvim"}

    -- coc
    use {'neoclide/coc.nvim', branch = 'release'}

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
