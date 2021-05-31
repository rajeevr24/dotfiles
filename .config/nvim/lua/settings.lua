-- Required to keep multiple buffers open multiple buffer
--vim.opt
-- Enable Syntax
vim.opt.syntax = 'enable'

-- Required to keep multiple buffers open multiple buffers
vim.opt.hidden = true
-- Fixing line
--vim.opt.nowrap = true
vim.cmd([[set nowrap]])
-- Enable mouse
vim.opt.mouse = 'a'
-- Show current line number
vim.opt.number = true
-- Show relative line number
vim.opt.relativenumber = true
-- Enable highlighting of current line
vim.opt.cursorline = true
-- Fixing tab and space
vim.opt.tabstop = 2
vim.opt.shiftwidth = 2
vim.opt.expandtab = true
-- Fixing Indent
vim.opt.smartindent = true
vim.opt.autoindent = true

-- Horizontal split will be below
vim.opt.splitbelow = true
-- Vertical split will be to the right
vim.opt.splitright = true
