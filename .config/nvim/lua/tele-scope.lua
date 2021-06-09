-- telescope
local actions = require('telescope.actions')
-- local utils = require('telescope.utils')
require('telescope').setup{
  defaults = {
		prompt_prefix = '❯ ',
		selection_caret = '❯ ',
		prompt_position = "top",
		sorting_strategy = "ascending",
		layout_defaults = {
      horizontal = {
        width_padding = 0.04,
        height_padding = 0.1,
        preview_width = 0.6,
      },
      vertical = {
        width_padding = 0.05,
        height_padding = 1,
        preview_height = 0.5,
      }
    },
    mappings = {
      n = {
        ["<Del>"] = actions.close
      },
    },
  },
  extensions = {
    fzy_native = {
            override_generic_sorter = false,
            override_file_sorter = true,
    }
  }
}

require('telescope').load_extension('fzy_native')
vim.g.mapleader = " "
local opt = {noremap = true, silent = true}
vim.api.nvim_set_keymap("n", "<Leader>ff", [[<Cmd>lua require('telescope.builtin').find_files(require('telescope.themes').get_dropdown({winblend = 10}))<CR>]], opt)
vim.api.nvim_set_keymap("n", "<Leader>fg", [[<Cmd>lua require('telescope.builtin').live_grep()<CR>]], opt)
vim.api.nvim_set_keymap("n", "<Leader>fb", [[<Cmd>lua require('telescope.builtin').buffers()<CR>]], opt)
vim.api.nvim_set_keymap("n", "<Leader>fh", [[<Cmd>lua require('telescope.builtin').help_tags()<CR>]], opt)
vim.api.nvim_set_keymap("n", "<Leader>rf", [[<Cmd>lua require('telescope.builtin').oldfiles()<CR>]], opt)
vim.api.nvim_set_keymap("n", "<Leader>fe", [[<Cmd>lua require('telescope.builtin').file_browser()<CR>]], opt)
vim.api.nvim_set_keymap("n", "<Leader>cf", [[<Cmd>lua require('tele-scope').search_config()<CR>]], opt)
vim.api.nvim_set_keymap("n", "<Leader>sf", [[<Cmd>lua require('tele-scope').search_file()<CR>]], opt)
vim.api.nvim_set_keymap("n", "<Leader>gp", [[<Cmd>lua require('tele-scope').grep_prompt()<CR>]], opt)
-- For LSP
vim.api.nvim_set_keymap("n", "<Leader>xw", [[<Cmd>Telescope lsp_workspace_diagnostics<cr>]], opt)
vim.api.nvim_set_keymap("n", "<Leader>xd", [[<Cmd>Telescope lsp_document_diagnostics<cr>]], opt)
vim.api.nvim_set_keymap("n", "<Leader>gr", [[<Cmd>Telescope lsp_references<cr>]], opt)
vim.api.nvim_set_keymap("n", "<Leader>ds", [[<Cmd>Telescope lsp_document_symbols<cr>]], opt)
-- Fuzzy Finding
vim.api.nvim_set_keymap("n", "<Leader>/", [[<Cmd>lua require('telescope.builtin').current_buffer_fuzzy_find()<CR>]], opt)
local M = {}

function M.grep_prompt()
  require('telescope.builtin').grep_string {
    shorten_path = true,
    search = vim.fn.input("Rg  "),
  }
end

function M.search_config()
    require('telescope.builtin').find_files({
        prompt_title = " Search Config Files ",
        prompt_prefix = "   ",
        cwd = "~/.config/nvim"
    })
end


function M.search_file()
    require('telescope.builtin').find_files({
        prompt_title = " Search Files ",
        prompt_prefix = "    ",
        cwd = "~"
    })
end

return M

