require'navigator'.setup({
  default_mapping = true,  -- set to false if you will remap every key,
  sumneko_root_path = vim.fn.expand("$HOME") .. "/.config/lua-language-server",
  sumneko_binary = vim.fn.expand("$HOME") .. "/.config/lua-language-server/bin/Linux/lua-language-server",
  lsp = {
    pyright = {
      filetypes = {'python'} -- disable javascript etc,
      -- set to {} to disable the lspclient for all filetype
    },
  }
})

vim.g.mapleader = " "

vim.api.nvim_set_keymap("n", "<leader>xx", "<cmd>Trouble<cr>",
  {silent = true, noremap = true}
)
vim.api.nvim_set_keymap("n", "<leader>xw", "<cmd>Trouble lsp_workspace_diagnostics<cr>",
  {silent = true, noremap = true}
)
vim.api.nvim_set_keymap("n", "<leader>xd", "<cmd>Trouble lsp_document_diagnostics<cr>",
  {silent = true, noremap = true}
)
vim.api.nvim_set_keymap("n", "<leader>xl", "<cmd>Trouble loclist<cr>",
  {silent = true, noremap = true}
)
vim.api.nvim_set_keymap("n", "<leader>xq", "<cmd>Trouble quickfix<cr>",
  {silent = true, noremap = true}
)
vim.api.nvim_set_keymap("n", "gR", "<cmd>Trouble lsp_references<cr>",
  {silent = true, noremap = true}
)
