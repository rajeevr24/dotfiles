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
  }
}

local M = {}

function M.grep_prompt()
  require('telescope.builtin').grep_string {
    shorten_path = true,
    search = vim.fn.input("Rg  "),
  }
end

function M.grep_config()
	local opts = {}
	opts.search_dirs = {'~/.config', '~/.config/nvim', }
	opts.prompt_prefix = '    '
	opts.prompt_title = 'Search Config' 
	opts.shorten_path = true
	require'telescope.builtin'.live_grep(opts)
end

function M.file_explorer()
  require('telescope.builtin').file_browser {
    prompt_title = "\\ File Explorer /",
    shorten_path = false,
    cwd = "~",
    width = .25,
    layout_strategy = 'horizontal',
    layout_config = {
      preview_width = 0.65,
    },
  }
end

return M
