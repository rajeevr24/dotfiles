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
vim.api.nvim_set_keymap("n", "<leader>pl", ":PackerLoad", {noremap = true})

-- Move selected line / block of text in visual mode
vim.api.nvim_set_keymap("x", "K", ":move '<-2<CR>gv-gv", opt)
vim.api.nvim_set_keymap("x", "J", ":move '>+1<CR>gv-gv", opt)

-- Mapping ; to : for easier access
vim.api.nvim_set_keymap("n", ";", ":", {noremap = true})

-- For Undo Tree
vim.api.nvim_set_keymap("n", "<F5>", ":UndotreeToggle<CR>", opt)

-- better indenting
vim.api.nvim_set_keymap("v", "<", "<gv", opt)
vim.api.nvim_set_keymap("v", ">", ">gv", opt)

--For pasting into new line
vim.api.nvim_set_keymap("n", "np", "o<ESC>p", opt)

-- Tweaks
vim.api.nvim_set_keymap("n", ",p", "\"0p", opt)

-- Move line(s) up and down
vim.api.nvim_set_keymap("n", "<M-j>", ":m .+1<CR>==", opt)
vim.api.nvim_set_keymap("n", "<M-k>", ":m .+1<CR>==", opt)
