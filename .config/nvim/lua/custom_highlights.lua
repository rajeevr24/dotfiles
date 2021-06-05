local cmd = vim.cmd

--misc--
cmd "hi LineNr term=bold cterm=bold guifg=#00ff00 guibg=NONE cterm=NONE gui=NONE"
-- cmd "hi Comment guifg=#4d4d00"
cmd "hi Comment guifg=#4d4d33"
cmd "hi VertSplit guifg=#22fcc8"
cmd "hi EndOfBuffer guifg=#1e222a"
-- Pmenu
cmd "hi PmenuSel guibg=#8c8c8c"
cmd "hi Pmenu  guibg=#282c34"
cmd "hi PmenuSbar guibg =#00cccc"
cmd "hi PmenuThumb guibg =#81A1C1"

-- line n.o
--cmd "hi clear CursorLine"
-- cmd "hi cursorlinenr guifg=#abb2bf"
cmd "hi cursorlinenr guifg=#ffa600"
cmd "hi CursorLine guifg=#808080"

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
