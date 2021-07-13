-- KeyMappings
local map = vim.api.nvim_set_keymap
local opt = {noremap = true, silent = true}

-- Remove highlights from search result
map("n", "<leader>nh", ':set nohlsearch<CR>', opt)

-- Alternate way to save and exit insert mode
map("n", "<C-x>", ":wq!<CR>", opt)
map("n", "<C-c>", "Esc", opt)

-- Better Window Navigation
map("n", "<C-h>", "<C-w>h", opt)
map("n", "<C-j>", "<C-w>j", opt)
map("n", "<C-k>", "<C-w>k", opt)
map("n", "<C-l>", "<C-w>l", opt)

-- Resizing Panes
map("n", "<C-Up>", ":resize -2<CR>", opt)
map("n", "<C-Down>", ":resize +2<CR>", opt)
map("n", "<C-Right>", ":vertical resize -2<CR>", opt)
map("n", "<C-Left>", ":vertical resize +2<CR>", opt)

-- For Packer
map("n", "<leader>pl", ":PackerLoad", {noremap = true})

-- Move selected line / block of text in visual mode
map("x", "K", ":move '<-2<CR>gv-gv", opt)
map("x", "J", ":move '>+1<CR>gv-gv", opt)

-- Mapping ; to : for easier access
map("n", ";", ":", {noremap = true})

-- For Undo Tree
map("n", "<F5>", ":UndotreeToggle<CR>", opt)

-- better indenting
map("v", "<", "<gv", opt)
map("v", ">", ">gv", opt)

--For pasting into new line
map("n", "np", "o<ESC>p", opt)

-- Tweaks
map("n", ",p", "\"0p", opt)

-- Move line(s) up and down
map("n", "<M-j>", ":m .+1<CR>==", opt)
map("n","<M-k>", ":m .-2<CR>==",opt)
