-- For WSL Clipboard Support
    vim.cmd('source ~/.config/nvim/vimscript/clipboard.vim')

-- For Ranger Integration
    vim.cmd('source ~/.config/nvim/vimscript/ranger.vim')

-- For autocommands
    vim.cmd('source ~/.config/nvim/vimscript/autocommand.vim')

-- For Illuminate
    vim.cmd('source ~/.config/nvim/vimscript/illuminate.vim')

-- For Plugins
    require('plugins')

-- For Code-Actions and LSP
    -- require('lsp')
    require('n-navigator')

-- MatchUp
    require('matchup')

-- Treesitter
    require('treesitter')

-- File Explorer
    require('tree')

-- For Commentary
    require('commentary')

-- Settings that work for me
    require('settings')

-- For Telescope
    require('tele-scope')

-- For Welcome Screen
    require('dashboard')

-- Auto-Completion
    require('completion')
    vim.o.completeopt = "menuone,noselect"


-- Basic Tweaks
    require('settings')
    require('auto-pair')
    require('custom_highlights')

--Colorscheme
    require('colorscheme')

-- Smooth Scroll
    require('neoscroll').setup()

-- For statusbar
    require('statusbar')
    require'colorizer'.setup()
    require('lspicon')

-- For Tabs
    -- require('tabs')
    require('barbar')

-- Vim Commands
vim.cmd([[
" Leader Key
	let mapleader=" "
]])
