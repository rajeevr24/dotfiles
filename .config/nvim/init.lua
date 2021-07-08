-- For WSL Clipboard Support
vim.cmd('source ~/.config/nvim/vimscript/clipboard.vim')

-- For autocommands
vim.cmd('source ~/.config/nvim/vimscript/autocommand.vim')

-- For Plugins
require('plugins')

-- For Code-Actions and LSP
-- require('lsp')
require('nvim-navigator')
require'lsp_signature'.on_attach()

-- MatchUp
require('matchup')

-- Icons
require('nvim-devicons')

-- Treesitter
require('treesitter')

-- File Explorer
require('tree')

-- For Commentary
require('commentary')

-- Settings that work for me
require('settings')

-- For Telescope
require('nvim-telescope')

-- For Welcome Screen
require('dashboard')

-- Auto-Completion
require('completion')
vim.o.completeopt = "menuone,noselect"

require('auto-pair')
require('custom_highlights')
require'colorizer'.setup()

-- Colorscheme
require('colorscheme')

-- Smooth Scroll
require('neoscroll').setup()

-- For statusbar
require('statusbar')

-- For Tabs
-- require('tabs')
require('barbar')

-- Basic Tweaks
require('settings')

-- Vim Commands
vim.cmd([[
" Leader Key
	let mapleader=" "
]])
