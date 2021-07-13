return require('packer').startup(function(use)
    -- Packer can manage itself
    use {'wbthomason/packer.nvim'}

    -- LSP and Diagnostic Support
    use {'neovim/nvim-lspconfig', event = 'BufRead'}
    use {
        'ray-x/navigator.lua',
        requires = {'ray-x/guihua.lua', run = 'cd lua/fzy && make'},
        after = 'nvim-lspconfig',
        config = function() require 'nvim-navigator' end
    }
    use {
        'ray-x/lsp_signature.nvim',
        after = 'nvim-lspconfig',
        config = function() require("lsp_signature").on_attach() end
    }

    -- Match Up
    use {
        'andymass/vim-matchup',
        event = 'CursorMoved',
        config = function() require 'matchup' end
    }

    -- For opening closing bracket and indentation
    use {'tpope/vim-surround', event = 'BufRead'}
    -- use {'tpope/vim-sleuth'}
    use {'tpope/vim-unimpaired', event = 'InsertEnter'}
    use {
        "windwp/nvim-autopairs",
        after = "nvim-compe",
        config = function()
            require("nvim-autopairs").setup()
            require("nvim-autopairs.completion.compe").setup({
                map_cr = true,
                map_complete = true -- insert () func completion
            })
        end
    }

    -- For Formatting
    use {'andrejlevkovitch/vim-lua-format', ft = {'lua'}}

    -- For Undo History
    use {'mbbill/undotree'}

    -- For Live Server
    use {'turbio/bracey.vim', run = 'npm install --prefix server', opt = true}

    -- Colorscheme
    -- use {'dracula/vim', as = 'dracula'}
    -- use 'mhartington/oceanic-next'
    -- use 'glepnir/zephyr-nvim'
    -- use 'ray-x/aurora'
    use {'RRethy/nvim-base16'}
    -- use {'folke/tokyonight.nvim'}

    -- For Welcome Screen
    use {
        'glepnir/dashboard-nvim',
        cmd = 'Dashboard',
        config = function() require 'dashboard' end
    }

    -- File Explorer
    use {
        'kyazdani42/nvim-tree.lua',
        requires = 'kyazdani42/nvim-web-devicons',
        cmd = 'NvimTreeToggle',
        config = function() require 'tree' end
    }

    -- For Comments
    use {
        'b3nj5m1n/kommentary',
        event = 'VimEnter',
        config = function() require 'commentary' end
    }

    -- For Tabs
    use {
        'romgrk/barbar.nvim',
        requires = 'kyazdani42/nvim-web-devicons',
        config = function() require 'barbar' end,
        -- event = 'BufHidden',
        cmd = 'BarbarEnable'
    }

    -- Fuzzy Finder
    use {
        'nvim-telescope/telescope.nvim',
        requires = {
            {'nvim-lua/popup.nvim'}, {'nvim-lua/plenary.nvim'},
            {'nvim-telescope/telescope-fzy-native.nvim', run = 'make'}
        },
        event = 'VimEnter',
        config = function() require 'nvim-telescope' end
    }

    -- Auto-Completion and Snippet
    use {
        'hrsh7th/nvim-compe',
        requires = {
            {'hrsh7th/vim-vsnip', event = 'InsertEnter'},
            {'rafamadriz/friendly-snippets', event = 'InsertEnter'}
        },
        config = function() require 'completion' end,
        event = 'InsertEnter'
    }

    -- Post-install/update hook with neovim command
    use {
        'nvim-treesitter/nvim-treesitter',
        run = ':TSUpdate',
        event = 'BufRead',
        config = function() require 'treesitter' end
    }
    use {'windwp/nvim-ts-autotag', ft = {'html', 'javascript'}}

    --  Colorizer and Icons
    use {'p00f/nvim-ts-rainbow', after = 'nvim-treesitter'}
    use {
        'norcalli/nvim-colorizer.lua',
        event = 'BufWinEnter',
        config = function() require'colorizer'.setup() end
    }

    -- For Beautiful statusline
    use {
        'glepnir/galaxyline.nvim',
        branch = 'main',
        requires = {'kyazdani42/nvim-web-devicons'},
        config = function() require 'nvim-galaxyline' end,
        opt = true
    }

    -- For Gir Status
    use {
        'lewis6991/gitsigns.nvim',
        requires = {'nvim-lua/plenary.nvim'},
        config = function() require('gitsigns').setup() end,
        event = 'BufRead'
    }

    -- Tweaking Vim
    use {'tweekmonster/startuptime.vim', cmd = "StartupTime"}
    -- use { 'dstein64/vim-startuptime' }

    -- For Zen Mode
    use {
        "folke/zen-mode.nvim",
        config = function() require("zen-mode").setup {} end,
        opt = true
    }
end)
