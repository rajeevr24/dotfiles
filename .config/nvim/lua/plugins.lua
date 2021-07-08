return require('packer').startup(function(use)
    -- Packer can manage itself
    use 'wbthomason/packer.nvim'

    -- LSP and Diagnostic Support
    use {'neovim/nvim-lspconfig'}
    use {
        'ray-x/navigator.lua',
        requires = {'ray-x/guihua.lua', run = 'cd lua/fzy && make'}
    }
    use {'ray-x/lsp_signature.nvim'}

    -- Match Up
    use 'andymass/vim-matchup'

    -- For opening closing bracket and indentation
    use {'tpope/vim-surround'}
    use {'tpope/vim-sleuth'}
    use {'tpope/vim-unimpaired'}
    use {'steelsojka/pears.nvim'}

    -- For Formatting
    -- use { 'lukas-reineke/format.nvim' }
    use {'andrejlevkovitch/vim-lua-format'}

    -- For Undo History
    use 'mbbill/undotree'

    -- For Live Server
    use {'turbio/bracey.vim', run = 'npm install --prefix server'}

    -- Colorscheme
    -- use {'dracula/vim', as = 'dracula'}
    -- use 'mhartington/oceanic-next'
    -- use 'glepnir/zephyr-nvim'
    -- use 'ray-x/aurora'
    use {'RRethy/nvim-base16'}
    use {'folke/tokyonight.nvim'}
    -- use 'rafamadriz/neon'

    -- For Welcome Screen
    use {'glepnir/dashboard-nvim'}

    -- File Explorer
    use {'kyazdani42/nvim-tree.lua', requires = 'kyazdani42/nvim-web-devicons'}
    use 'kevinhwang91/rnvimr'
    use {
        'ahmedkhalf/lsp-rooter.nvim',
        config = function() require("lsp-rooter").setup {} end
    }

    -- For Comments
    use {'b3nj5m1n/kommentary'}

    -- For Tabs
    use {'romgrk/barbar.nvim', requires = 'kyazdani42/nvim-web-devicons'}

    -- Fuzzy Finder
    use {
        'nvim-telescope/telescope.nvim',
        requires = {
            {'nvim-lua/popup.nvim'}, {'nvim-lua/plenary.nvim'},
            {'nvim-telescope/telescope-fzy-native.nvim'}
        }
    }

    -- Auto-Completion and Snippet
    use {
        'hrsh7th/nvim-compe',
        requires = {
            {'hrsh7th/vim-vsnip'}, {'rafamadriz/friendly-snippets', opt = true}
        }
    }

    -- Post-install/update hook with neovim command
    use {'nvim-treesitter/nvim-treesitter', run = ':TSUpdate'}

    --  Colorizer and Icons
    use {'p00f/nvim-ts-rainbow'}
    use {'norcalli/nvim-colorizer.lua'}

    -- For Beautiful statusline
    use {
        'glepnir/galaxyline.nvim',
        branch = 'main',
        requires = {'kyazdani42/nvim-web-devicons'}
    }

    -- For Gir Status
    use {
        'lewis6991/gitsigns.nvim',
        requires = {'nvim-lua/plenary.nvim'},
        config = function() require('gitsigns').setup() end
    }

    -- Tweaking Vim
    use {'tweekmonster/startuptime.vim'}
    -- use { 'dstein64/vim-startuptime' }

    -- Smooth Scroll
    use {'karb94/neoscroll.nvim'}

    -- For Zen Mode
    use {
        "folke/zen-mode.nvim",
        config = function() require("zen-mode").setup {} end
    }

    -- Terminal --
    use 'akinsho/nvim-toggleterm.lua'
end)
