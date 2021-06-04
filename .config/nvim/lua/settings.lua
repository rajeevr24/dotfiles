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
-- Show command Height
    vim.opt.cmdheight = 1
-- Set signcolumn
    vim.opt.signcolumn = 'yes'
-- Show relative line number
    vim.opt.relativenumber = true
-- Enable highlighting of current line
    vim.opt.cursorline = true
-- Fixing tab and space
    vim.opt.tabstop = 4
    vim.opt.shiftwidth = 4
    vim.opt.expandtab = true
-- Fixing Indent
    vim.opt.smartindent = true
    vim.opt.autoindent = true
    vim.cmd([[filetype plugin indent on]])
-- Don't need vi-mode
    --vim.cmd([[set noshowmode]])
-- Horizontal split will be below
    vim.opt.splitbelow = true
-- Vertical split will be to the right
    vim.opt.splitright = true
-- Tweaks
    vim.cmd([[
    set ignorecase
    set smartcase
    set incsearch
    "For pasting into new line
        nmap ,p o<ESC>p
    " For easier access to command
        nnoremap ; :
    "Paste last thing yanked not deleted
        nmap ,p "0p
        nmap ,P "oP
    set termguicolors
]])
