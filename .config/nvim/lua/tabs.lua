
require "bufferline".setup {
    options = {
        offsets = {{filetype = "NvimTree", text = "File Explorer", text_align = "center"}},
        buffer_close_icon = "",
        -- modified_icon = "",
        close_icon = " ",
        left_trunc_marker = "",
        right_trunc_marker = "",
        max_name_length = 14,
        max_prefix_length = 13,
        tab_size = 20,
        show_tab_indicators = true,
        enforce_regular_tabs = false,
        show_buffer_close_icons = false,
        separator_style = "thick",
        mappings = "true"
    }
}
require'bufferline'.sort_buffers_by('directory')
local opt = {silent = true}
local map = vim.api.nvim_set_keymap
vim.g.mapleader = " "

-- MAPPINGS
map("n", "<S-t>", [[<Cmd>tabnew<CR>]], opt) -- new tab
map("n", "<S-x>", [[<Cmd>bdelete<CR>]], opt) -- close tab
map("n", "<leader>p", [[<Cmd>BufferLinePick<CR>]], opt) --Pick Buffer

-- Move Between Tabs
map("n", "<TAB>", [[<Cmd>BufferLineCycleNext<CR>]], opt)
map("n", "<S-TAB>", [[<Cmd>BufferLineCyclePrev<CR>]], opt)
