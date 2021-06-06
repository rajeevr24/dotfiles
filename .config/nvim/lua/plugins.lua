
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
    -- use {'glepnir/lspsaga.nvim'}
    use {'ray-x/navigator.lua',
        requires = {'ray-x/guihua.lua', run = 'cd lua/fzy && make'}}

    -- For Live Server
    use {'turbio/bracey.vim', run = 'npm install --prefix server'}

    -- Colorscheme
    -- use 'marko-cerovac/material.nvim'
    -- use {'folke/tokyonight.nvim'}
    -- use {'dracula/vim', as = 'dracula'}
    use {'norcalli/nvim-base16.lua'}
    use {"npxbr/gruvbox.nvim", requires = {"rktjmp/lush.nvim"}}
    -- use {'Th3Whit3Wolf/one-nvim'}
    -- For Welcome Screen
    use 'glepnir/dashboard-nvim'

    -- File Explorer
    use {'kyazdani42/nvim-tree.lua', requires = 'kyazdani42/nvim-web-devicons'}
    use {'kevinhwang91/rnvimr'}
    use {
        "ahmedkhalf/lsp-rooter.nvim",
        config = function()
            require("lsp-rooter").setup {
            }
        end
    }

    -- For Comments
    use 'b3nj5m1n/kommentary'
    -- For Tabs
    use {'akinsho/nvim-bufferline.lua', requires = 'kyazdani42/nvim-web-devicons'}
    -- use {'romgrk/barbar.nvim', requires = 'kyazdani42/nvim-web-devicons'}
    -- Fuzzy Finder
    use {
        'nvim-telescope/telescope.nvim',
        requires = {{'nvim-lua/popup.nvim'}, {'nvim-lua/plenary.nvim'},{'nvim-telescope/telescope-fzy-native.nvim'}}
    }
    -- Auto-Completion
    use {'hrsh7th/nvim-compe', requires = {{ 'hrsh7th/vim-vsnip'}, {'rafamadriz/friendly-snippets', opt = true}}}

    -- Post-install/update hook with neovim command
    use { 'nvim-treesitter/nvim-treesitter', run = ':TSUpdate' }
    --  Colorizer
    use 'p00f/nvim-ts-rainbow'
    use {'norcalli/nvim-colorizer.lua'}
    -- Bracket Closer
    -- use 'windwp/nvim-autopairs'
    use {'steelsojka/pears.nvim'}
    -- Use specific branch, dependency and run lua file after load
    -- For Beautiful statusline
    -- use {'glepnir/galaxyline.nvim', branch = 'main', requires = {'kyazdani42/nvim-web-devicons'}}
      use {
      'hoob3rt/lualine.nvim',
      requires = {'kyazdani42/nvim-web-devicons'}
    }
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
    -- Tweaking Vim
    use 'tweekmonster/startuptime.vim'
    -- Smooth Scroll
    use 'karb94/neoscroll.nvim'
    -- For Zen Mode
    use {"folke/zen-mode.nvim",
  config = function()
    require("zen-mode").setup {
      -- your configuration comes here
      -- or leave it empty to use the default settings
      -- refer to the configuration section below
    }
  end}
    -- You can alias plugin names
end)
