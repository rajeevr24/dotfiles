-- telescope
local actions = require('telescope.actions')
local utils = require('telescope.utils')
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
vim.api.nvim_set_keymap("n", "<Leader>ff", [[<Cmd>lua require('telescope.builtin').find_files()<CR>]], opt)
vim.api.nvim_set_keymap("n", "<Leader>fg", [[<Cmd>lua require('telescope.builtin').live_grep()<CR>]], opt)
vim.api.nvim_set_keymap("n", "<Leader>fb", [[<Cmd>lua require('telescope.builtin').buffers()<CR>]], opt)
vim.api.nvim_set_keymap("n", "<Leader>fh", [[<Cmd>lua require('telescope.builtin').help_tags()<CR>]], opt)
vim.api.nvim_set_keymap("n", "<Leader>fe", [[<Cmd>lua require('telescope.builtin').file_explorer()<CR>]], opt)
vim.api.nvim_set_keymap("n", "<Leader>cf", [[<Cmd>lua require('tele-scope').grep_config()<CR>]], opt)
vim.api.nvim_set_keymap("n", "<Leader>sf", [[<Cmd>lua require('tele-scope').search_file()<CR>]], opt)

local M = {}

function M.grep_prompt()
  require('telescope.builtin').grep_string {
    shorten_path = true,
    search = vim.fn.input("Rg  "),
  }
end

function M.grep_config()
    require('telescope.builtin').find_files({
        prompt_title = " Search Config Files ",
        prompt_prefix = "    ",
        cwd = "~/.config/nvim"
    })
end


-- function M.file_explorer()
--   require('telescope.builtin').file_files({
--     prompt_title = "\\ File Explorer /",
--     shorten_path = false,
--     cwd = "~",
--     width = .25,
--     layout_strategy = 'horizontal',
--     layout_config = {
--       preview_width = 0.65,
--     }
--   })
-- end

function M.search_file()
    require('telescope.builtin').find_files({
        prompt_title = " Search Files ",
        prompt_prefix = "    ",
        cwd = "~"
    })
end

return M

