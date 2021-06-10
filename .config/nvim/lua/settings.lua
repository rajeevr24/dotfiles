-- Enable Syntax
    vim.opt.syntax = 'enable'
-- Enable term GUI colors
    vim.opt.termguicolors = true

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
--
    vim.opt.relativenumber = true

-- Enable highlighting of current line and column
--
    vim.opt.cursorline = true
    vim.opt.cursorcolumn= true

-- Fixing tab and space

    vim.opt.tabstop = 4
    vim.opt.shiftwidth = 4
    vim.opt.expandtab = true

-- Fixing Indent
    vim.opt.smartindent = true
    vim.opt.autoindent = true
    vim.cmd([[filetype plugin indent on]])

-- Fixing Search
    vim.opt.ignorecase = true
    vim.opt.smartcase = true
    vim.opt.incsearch = true

-- Horizontal split will be below
    vim.opt.splitbelow = true

-- Vertical split will be to the right
    vim.opt.splitright = true

-- KeyMappings
    local opt = {noremap = true, silent = true}
    vim.api.nvim_set_keymap("n", "<leader>nh", ':set nohlsearch<CR>',opt)

    -- Alternate way to save and exit insert mode
    vim.api.nvim_set_keymap("n", "<C-s>", ":w<CR>", opt )
    vim.api.nvim_set_keymap("n", "<C-x>", ":wq!<CR>", opt )
    vim.api.nvim_set_keymap("n", "<C-c>", "Esc", opt )

    -- Better Window Navigation
    vim.api.nvim_set_keymap("n", "<C-h>", "<C-w>h", opt)
    vim.api.nvim_set_keymap("n", "<C-j>", "<C-w>j", opt)
    vim.api.nvim_set_keymap("n", "<C-k>", "<C-w>k", opt)
    vim.api.nvim_set_keymap("n", "<C-l>", "<C-w>l", opt)

    -- Resizing Panes
    vim.api.nvim_set_keymap("n", "<C-Up>", ":resize +2<CR>",opt)
    vim.api.nvim_set_keymap("n", "<C-Down>", ":resize -2<CR>",opt)
    vim.api.nvim_set_keymap("n", "<C-Right>", ":vertical resize -2<CR>", opt)
    vim.api.nvim_set_keymap("n", "<C-Left>", ":vertical resize +2<CR>", opt)

    -- For Packer
    vim.api.nvim_set_keymap("n", "<leader>pl", ":PackerLoad", opt)

-- Clipboard
    vim.cmd([[set clipboard=unnamedplus ]])

-- Tweaks
    vim.cmd([[ 
    set nocompatible
    "For pasting into new line
        nmap np o<ESC>p
 
        
    " For Undo
    nnoremap <F5> :UndotreeToggle<CR>

    " Mapping ; to : for easier access
        nnoremap ; :

    "Paste last thing yanked not deleted
        nmap ,p "0p
        nmap ,P "0P

    " Move selected line / block of text in visual mode
    " shift + k to move up
    " shift + j to move down
	xnoremap K :move '<-2<CR>gv-gv
	xnoremap J :move '>+1<CR>gv-gv


]])
