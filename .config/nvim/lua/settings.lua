-- Enable term GUI colors
vim.opt.termguicolors = true

-- Required to keep multiple buffers open multiple buffers
vim.opt.hidden = true

-- Fixing line
vim.cmd([[set nowrap]])

-- Enable mouse
vim.opt.mouse = 'a'

-- Show current line number
vim.opt.number = true

-- Don't need showmode
vim.opt.showmode = false
vim.opt.shortmess:append "c"

-- Show command Height
vim.opt.cmdheight = 1

-- Set signcolumn
vim.opt.signcolumn = 'yes'

-- Show relative line number
vim.opt.relativenumber = true

-- Enable highlighting of current line and column
vim.opt.cursorline = true
vim.opt.cursorcolumn = true

-- Fixing tab and space
vim.opt.tabstop = 4
vim.opt.shiftwidth = 4
vim.opt.expandtab = true

-- Fixing Indent
vim.opt.smartindent = true

-- Fixing Search
vim.opt.ignorecase = true
vim.opt.smartcase = true

-- Horizontal split will be below
vim.opt.splitbelow = true

-- Vertical split will be to the right
vim.opt.splitright = true

-- Decreasing Update time
vim.opt.updatetime = 100

-- Make Line Visible
vim.opt.scrolloff = 8

-- Clipboard
vim.cmd([[set clipboard=unnamedplus ]])

-- KeyMappings
local opt = {noremap = true, silent = true}
vim.api.nvim_set_keymap("n", "<leader>nh", ':set nohlsearch<CR>', opt)

-- Alternate way to save and exit insert mode
vim.api.nvim_set_keymap("n", "<C-x>", ":wq!<CR>", opt)
vim.api.nvim_set_keymap("n", "<C-c>", "Esc", opt)

-- Better Window Navigation
vim.api.nvim_set_keymap("n", "<C-h>", "<C-w>h", opt)
vim.api.nvim_set_keymap("n", "<C-j>", "<C-w>j", opt)
vim.api.nvim_set_keymap("n", "<C-k>", "<C-w>k", opt)
vim.api.nvim_set_keymap("n", "<C-l>", "<C-w>l", opt)

-- Resizing Panes
vim.api.nvim_set_keymap("n", "<C-Up>", ":resize -2<CR>", opt)
vim.api.nvim_set_keymap("n", "<C-Down>", ":resize +2<CR>", opt)
vim.api.nvim_set_keymap("n", "<C-Right>", ":vertical resize -2<CR>", opt)
vim.api.nvim_set_keymap("n", "<C-Left>", ":vertical resize +2<CR>", opt)

-- For Packer
vim.api.nvim_set_keymap("n", "<leader>pl", ":PackerLoad", opt)

-- Move selected line / block of text in visual mode
vim.api.nvim_set_keymap("x", "K", ":move '<-2<CR>gv-gv", opt)
vim.api.nvim_set_keymap("x", "J", ":move '>+1<CR>gv-gv", opt)

-- Mapping ; to : for easier access
vim.cmd 'nnoremap ; :'

-- For Undo Tree
vim.api.nvim_set_keymap("n", "<F5>", ":UndotreeToggle<CR>", opt)

-- better indenting
vim.api.nvim_set_keymap("v", "<", "<gv", { noremap = true, silent = true })
vim.api.nvim_set_keymap("v", ">", ">gv", { noremap = true, silent = true })

-- Tweaks
vim.cmd([[ 
    set nocompatible
    "For pasting into new line
        nmap np o<ESC>p

    " Mapping ; to : for easier access
        "  nnoremap ; :

    "Paste last thing yanked not deleted
        nmap ,p "0p
        nmap ,P "0P
]])
