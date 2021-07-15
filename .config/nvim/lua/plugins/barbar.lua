local opt = {noremap = true, silent = true}
vim.api.nvim_set_keymap('n', '<A-c>', ':BufferClose<CR>', opt)
vim.api.nvim_set_keymap('n', '<A-,>', ':BufferPrevious<CR>', opt)
vim.api.nvim_set_keymap('n', '<A-.>', ':BufferNext<CR>', opt)
vim.api.nvim_set_keymap('n', '<A-1>', ':BufferGoto 1<CR>', opt)
vim.api.nvim_set_keymap('n', '<A-2>', ':BufferGoto 2<CR>', opt)
vim.api.nvim_set_keymap('n', '<A-3>', ':BufferGoto 3<CR>', opt)
vim.api.nvim_set_keymap('n', '<A-4>', ':BufferGoto 4<CR>', opt)
vim.api.nvim_set_keymap('n', '<A-5>', ':BufferGoto 5<CR>', opt)
vim.api.nvim_set_keymap('n', '<A-6>', ':BufferGoto 6<CR>', opt)
vim.api.nvim_set_keymap('n', '<A-7>', ':BufferGoto 7<CR>', opt)
vim.api.nvim_set_keymap('n', '<A-8>', ':BufferGoto 8<CR>', opt)
vim.api.nvim_set_keymap('n', '<A-9>', ':BufferGoto 9<CR>', opt)

vim.cmd([[
let bufferline = get(g:, 'bufferline', {})
let bufferline.animation = v:false
let bufferline.maximum_padding = 2
let bufferline.closable = v:true
let bufferline.icon_close_tab_modified = ''
]])

local tree ={}
tree.open = function ()
   require'bufferline.state'.set_offset(31, 'FileTree')
   require'nvim-tree'.find_file(true)
end

tree.close = function ()
   require'bufferline.state'.set_offset(0)
   require'nvim-tree'.close()
end

return tree
