
return require('packer').startup(function(use)
  -- Packer can manage itself
  use 'wbthomason/packer.nvim'

  -- LSP and Diagnostic Support
  use {
    'neovim/nvim-lspconfig', requires = {'onsails/lspkind-nvim'}
}
use {
  "folke/trouble.nvim",
  requires = "kyazdani42/nvim-web-devicons",
  config = function()
    require("trouble").setup {
    }
  end
}

use {'ray-x/navigator.lua',
    requires = {'ray-x/guihua.lua', run = 'cd lua/fzy && make'}}

-- LSP Signature
--use {
--  "ray-x/lsp_signature.nvim",
--}

  -- Colorscheme
  use 'marko-cerovac/material.nvim'
  use 'folke/tokyonight.nvim'
  use {'dracula/vim', as = 'dracula'}
  -- For Welcome Screen
  use 'glepnir/dashboard-nvim'

  -- File Explorer
  --	use 'kevinhwang91/rnvimr'
  use {'kyazdani42/nvim-tree.lua', requires = 'kyazdani42/nvim-web-devicons'}
  use {
  "ahmedkhalf/lsp-rooter.nvim",
  config = function()
    require("lsp-rooter").setup {
      -- your configuration comes here
      -- or leave it empty to use the default settings
      -- refer to the configuration section below
    }
  end
}

  -- For Comments
  use 'b3nj5m1n/kommentary'
  -- For Tabs
	use {'akinsho/nvim-bufferline.lua', requires = 'kyazdani42/nvim-web-devicons'}
  -- Fuzzy Finder
  use {
  'nvim-telescope/telescope.nvim',
  requires = {{'nvim-lua/popup.nvim'}, {'nvim-lua/plenary.nvim'}}
  }
  -- Auto-Completion
  use {'hrsh7th/nvim-compe', requires = {{ 'hrsh7th/vim-vsnip', opt = true }, {'rafamadriz/friendly-snippets', opt = true}}}

  -- Post-install/update hook with neovim command
  use { 'nvim-treesitter/nvim-treesitter', run = ':TSUpdate' }
  --  Colorizer
  use 'p00f/nvim-ts-rainbow'
  use {'norcalli/nvim-colorizer.lua'}
  -- Bracket Closer
  use 'windwp/nvim-autopairs'
  -- Use specific branch, dependency and run lua file after load
  -- For Beautiful statusline
  use {'glepnir/galaxyline.nvim', branch = 'main', requires = {'kyazdani42/nvim-web-devicons'}}

  -- Use dependency and run lua function after load
use {
  'lewis6991/gitsigns.nvim',
  requires = {
    'nvim-lua/plenary.nvim'
  },
  config = function()
    require('gitsigns').setup()
  end
}

  -- You can alias plugin names
end)
