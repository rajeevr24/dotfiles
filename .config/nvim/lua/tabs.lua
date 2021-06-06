
require "bufferline".setup {
    options = {
        offsets = {{filetype = "NvimTree", text = ""}},
        buffer_close_icon = "",
        modified_icon = "",
        close_icon = " ",
        left_trunc_marker = "",
        right_trunc_marker = "",
        max_name_length = 14,
        max_prefix_length = 13,
        tab_size = 20,
        show_tab_indicators = true,
        enforce_regular_tabs = false,
        -- view = "multiwindow",
        show_buffer_close_icons = true,
        separator_style = "thin",
        mappings = "true"
    }
}

local function add_hi(item, fg, bg)
    local buf_hi = "hi BufferLine" .. item .. " guifg=" .. fg .. " guibg=" .. bg

    if item == "BufferSelected" then
        vim.cmd(buf_hi .. " gui=bold")
    else
        vim.cmd(buf_hi)
    end
end

local function bufferline_colors()
    -- colors ---
    local fg = "#565c64"
    local bg = "#252931"

    -- active buffer
    local darkerBg = "#1e222a" -- nvim's bg
    local activeBuffer_fg = "#c8ccd4"

    -- unfocused opened buffer

    local grey_dark = "#9298a0"

    -- tabs
    local bg2 = "#30343c" -- should be lighter than bg
    local red = "#d47d85"

    -- modified buffers
    local green = "#A3BE8C"

    add_hi("Background", fg, bg)
    add_hi("Fill", fg, bg)

    add_hi("BufferSelected", activeBuffer_fg, darkerBg)
    add_hi("BufferVisible", grey_dark, bg)

    add_hi("Tab", grey_dark, bg2)
    add_hi("TabSelected", bg, "#81A1C1")
    add_hi("TabClose", red, bg)

    -- making separates transparent

    add_hi("Indicator", bg, bg)
    add_hi("IndicatorSelected", bg, bg)

    add_hi("Separator", bg, bg)
    add_hi("SeparatorVisible", bg, bg)
    add_hi("SeparatorSelected", darkerBg, darkerBg)

    -- modified buffers
    add_hi("Modified", red, bg)
    add_hi("ModifiedVisible", red, bg)
    add_hi("ModifiedSelected", green, darkerBg)
end

bufferline_colors()

local opt = {silent = true}
local map = vim.api.nvim_set_keymap
vim.g.mapleader = " "

-- MAPPINGS
map("n", "<S-t>", [[<Cmd>tabnew<CR>]], opt) -- new tab
map("n", "<S-x>", [[<Cmd>bdelete<CR>]], opt) -- close tab
