-- For autocommands
-- vim.cmd('source ~/.config/nvim/vimscript/autocommand.vim')

-- Mapping leader
local g = vim.g
g.mapleader = " "

-- Colorscheme
require('custom_highlights')

-- For Plugins
require('pluginList')

-- Icons
require('nvim-devicons')

-- Settings that work for me
require('settings')
require('keymappings')

-- Basic Tweaks
require('settings')
