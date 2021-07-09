-- For WSL Clipboard Support
vim.cmd('source ~/.config/nvim/vimscript/clipboard.vim')

-- For autocommands
vim.cmd('source ~/.config/nvim/vimscript/autocommand.vim')

-- For Plugins
require('plugins')

-- For Code-Actions and LSP
-- require('lsp')
require'lsp_signature'.on_attach()

-- Icons
require('nvim-devicons')

-- Settings that work for me
require('settings')

-- For Welcome Screen
require('dashboard')

-- Auto-Completion
vim.o.completeopt = "menuone,noselect"

require('custom_highlights')

-- Colorscheme
require('colorscheme')

-- Basic Tweaks
require('settings')

-- Vim Commands
vim.cmd([[
" Leader Key
	let mapleader=" "
]])
