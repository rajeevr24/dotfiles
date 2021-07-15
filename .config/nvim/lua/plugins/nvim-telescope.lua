-- telescope
local actions = require('telescope.actions')

-- local utils = require('telescope.utils')
require('telescope').setup {
    defaults = {
        prompt_prefix = '  ',
        selection_caret = '❯ ',
        color_devicons = true,
        sorting_strategy = "ascending",

        layout_config = {
            width = 0.95,
            height = 0.85,
            prompt_position = 'top',
            horizontal = {
                preview_width = function(_, cols, _)
                    if cols > 200 then
                        return math.floor(cols * 0.4)
                    else
                        return math.floor(cols * 0.6)
                    end
                end
            },
            vertical = {width = 0.9, height = 0.95, preview_height = 0.5},
            flex = {horizontal = {preview_width = 0.9}}
        },
        mappings = {
            i = {
                ["<C-j>"] = actions.move_selection_next,
                ["<C-k>"] = actions.move_selection_previous,
                ["<C-q>"] = actions.smart_send_to_qflist + actions.open_qflist,
                ["<CR>"] = actions.select_default + actions.center
            },
            n = {
                ["<C-j>"] = actions.move_selection_next,
                ["<C-k>"] = actions.move_selection_previous,
                ["<C-q>"] = actions.smart_send_to_qflist + actions.open_qflist
            }
        },
        extensions = {
            fzy_native = {
                override_generic_sorter = true,
                override_file_sorter = true
            }
        }
    }
}

require('telescope').load_extension('fzy_native')

--  Telescope Keybindings
vim.g.mapleader = " "
local opt = {noremap = true, silent = true}
vim.api.nvim_set_keymap("n", "<Leader>ff",
                        [[<Cmd>lua require('telescope.builtin').find_files(require('telescope.themes').get_dropdown({winblend = 10}))<CR>]],
                        opt)
vim.api.nvim_set_keymap("n", "<Leader>lg",
                        [[<Cmd>lua require('telescope.builtin').live_grep()<CR>]],
                        opt)
vim.api.nvim_set_keymap("n", "<C-b>",
                        [[<Cmd>lua require('telescope.builtin').buffers()<CR>]],
                        opt)
vim.api.nvim_set_keymap("n", "<Leader>fh",
                        [[<Cmd>lua require('telescope.builtin').help_tags()<CR>]],
                        opt)
vim.api.nvim_set_keymap("n", "<Leader>of",
                        [[<Cmd>lua require('telescope.builtin').oldfiles()<CR>]],
                        opt)
vim.api.nvim_set_keymap("n", "<Leader>fe",
                        [[<Cmd>lua require('telescope.builtin').file_browser()<CR>]],
                        opt)
vim.api.nvim_set_keymap("n", "<Leader>cf",
                        [[<Cmd>lua require('plugins.nvim-telescope').search_config()<CR>]],
                        opt)
-- vim.api.nvim_set_keymap("n", "<Leader>sf",
--                         [[<Cmd>lua require('plugins.nvim-telescope').search_file()<CR>]],
--                         opt)
vim.api.nvim_set_keymap("n", "<Leader>gp",
                        [[<Cmd>lua require('plugins.nvim-telescope').grep_prompt()<CR>]],
                        opt)
vim.api.nvim_set_keymap("n", "<Leader>rp",
                        [[<Cmd>lua require('plugins.nvim-telescope').search_repos()<CR>]],
                        opt)

-- For LSP
vim.api.nvim_set_keymap("n", "<Leader>xw",
                        [[<Cmd>Telescope lsp_workspace_diagnostics<cr>]], opt)
vim.api.nvim_set_keymap("n", "<Leader>xd",
                        [[<Cmd>Telescope lsp_document_diagnostics<cr>]], opt)
vim.api.nvim_set_keymap("n", "<Leader>gr",
                        [[<Cmd>Telescope lsp_references<cr>]], opt)
vim.api.nvim_set_keymap("n", "<Leader>ds",
                        [[<Cmd>Telescope lsp_document_symbols<cr>]], opt)

-- Fuzzy Finding
vim.api.nvim_set_keymap("n", "<Leader>/",
                        [[<Cmd>lua require('telescope.builtin').current_buffer_fuzzy_find()<CR>]],
                        opt)
local M = {}

function M.grep_prompt()
    require('telescope.builtin').grep_string {
        shorten_path = true,
        search = vim.fn.input("Rg   ")
    }
end

function M.search_config()
    require('telescope.builtin').find_files({
        prompt_title = " Search Config Files ",
        prompt_prefix = "   ",
        cwd = "~/.config/nvim"
    })
end

-- function M.search_file()
--     require('telescope.builtin').find_files({
--         prompt_title = " Search Files ",
--         prompt_prefix = "    ",
--         cwd = "~"
--     })
-- end

function M.search_repos()
    require'telescope.builtin'.file_browser({
        prompt_title = "Search Repos",
        prompt_prefix = "  ",
        cwd = "~/repos"
    })
end

return M
