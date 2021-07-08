vim.g.nvim_tree_hide_dotfiles = 1 -- 0 by default, this option hides files and folders starting with a dot `.`
vim.g.nvim_tree_indent_markers = 1 -- "0 by default, this option shows indent markers when folders are open
vim.g.nvim_tree_follow = 1 -- "0 by default, this option allows the cursor to be updated when entering a buffer
vim.g.nvim_tree_auto_ignore_ft = 'dashboard' -- empty by default, don't auto open tree on specific filetypes.

-- vim.g.nvim_tree_show_icons = {git = 1, folders = 1, files = 1}
vim.g.nvim_tree_icons = {
    default = '',
    symlink = '',
    git = {
        unstaged = "",
        staged = "✓",
        unmerged = "",
        renamed = "➜",
        untracked = ""
    },
    folder = {
        default = "",
        open = "",
        empty = "",
        empty_open = "",
        symlink = ""
    }
}

-- KeyMappings

vim.g.mapleader = " "
local opt = {noremap = true, silent = true}
vim.api.nvim_set_keymap('n', '<C-n>', ':NvimTreeToggle<CR>', opt)
vim.api.nvim_set_keymap('n', '<Leader>r', ':NvimTreeRefresh<CR>', opt)
vim.api.nvim_set_keymap('n', '<Leader>n', ':NvimTreeFindFile<CR>', opt)

local tree = {}
tree.open = function()
    require'bufferline.state'.set_offset(31, 'FileTree')
    require'nvim-tree'.find_file(true)
end

tree.close = function()
    require'bufferline.state'.set_offset(0)
    require'nvim-tree'.close()
end

return tree
