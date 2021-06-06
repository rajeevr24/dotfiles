local cmd = vim.cmd

--misc--
cmd "hi LineNr term=bold cterm=bold guifg=#00ff00 guibg=NONE cterm=NONE gui=NONE"
cmd "hi Comment guifg=#595959"
-- cmd "hi Comment guifg=#4d4d33"
cmd "hi VertSplit guifg=#22fcc8"
cmd "hi EndOfBuffer guifg=#1e222a"
-- Pmenu
cmd "hi PmenuSel guibg=#8c8c8c"
cmd "hi Pmenu  guibg=#282c34"
cmd "hi PmenuSbar guibg =#00cccc"
cmd "hi PmenuThumb guibg =#81A1C1"

-- line n.o
--cmd "hi clear CursorLine"
cmd "hi cursorlinenr guifg=#ffa600"

-- inactive statuslines as thin splitlines
cmd("highlight! StatusLineNC gui=underline  guifg=#22fcc8")
cmd("highlight! StatusLine   guifg=#d55aff")

-- NvimTree
-- cmd "hi NvimTreeFolderIcon guifg = #61afef"
-- cmd "hi NvimTreeFolderName guifg = #61afef"
-- cmd "hi NvimTreeIndentMarker guifg=#383c44"
-- cmd "hi NvimTreeNormal guibg=#1b1f27"
-- cmd "hi NvimTreeVertSplit guifg=#1e222a"
-- cmd "hi NvimTreeRootFolder guifg=#1b1f27"

-- telescope
cmd "hi TelescopeBorder   guifg=#d55aff"
cmd "hi TelescopePromptBorder   guifg=#ccffff"
cmd "hi TelescopeResultsBorder  guifg=#ccffff"
cmd "hi TelescopePreviewBorder  guifg=#996633"


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
