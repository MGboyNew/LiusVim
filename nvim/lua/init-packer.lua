return require('packer').startup(function()
  -- Packer can manage itself
  use 'wbthomason/packer.nvim'

  -- lsp
  use 'neovim/nvim-lspconfig'
  use 'hrsh7th/nvim-cmp' -- Autocompletion plugin
  use 'hrsh7th/cmp-nvim-lsp' -- LSP source for nvim-cmp
  use 'L3MON4D3/LuaSnip' -- Snippets plugin
  use 'saadparwaiz1/cmp_luasnip' -- Snippets source for nvim-cmp

  use {
  'nvim-telescope/telescope.nvim',
  requires = { {'nvim-lua/plenary.nvim'} }
  }

  use {
     'kyazdani42/nvim-tree.lua',
     requires = {
       'kyazdani42/nvim-web-devicons', -- optional, for file icon
     }
   }
  use {
      'nvim-treesitter/nvim-treesitter',
      run = ':TSUpdate'
  }
  use 'preservim/tagbar'
  use 'tpope/vim-surround'
  use 'TaDaa/vimade'
  -- use  'romgrk/barbar.nvim' 
  use {'akinsho/bufferline.nvim', tag = "*"}
  -- use 'NTBBloodbath/doom-one.nvim'
  use 'folke/tokyonight.nvim'
  use 'nvim-lualine/lualine.nvim'
  use 'jiangmiao/auto-pairs'
  use 'neoclide/coc.nvim'

end)
