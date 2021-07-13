-- Mapping leader
local g = vim.g
g.mapleader = ","

-- For WSL Clipboard Support
-- vim.cmd('source ~/.config/nvim/vimscript/clipboard.vim')

-- For autocommands
vim.cmd('source ~/.config/nvim/vimscript/autocommand.vim')

-- For Plugins
require('plugins')

-- Icons
require('nvim-devicons')

-- Settings that work for me
require('settings')
require('keymappings')

-- Colorscheme
require('colorscheme')
require('custom_highlights')

-- Basic Tweaks
require('settings')
