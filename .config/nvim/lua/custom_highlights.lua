local cmd = vim.cmd

-- misc--
-- cmd "hi Comment guifg=#595959"
cmd "hi VertSplit guifg=#22fcc8"
cmd "hi EndOfBuffer guifg=#1e222a"

-- NvimTree
cmd "hi NvimTreeFolderIcon guifg = #ffa600"
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

-- Dashboard
-- cmd "hi DashboardFooter guifg=#00e68a"

-- Colorscheme
vim.api.nvim_exec([[
    autocmd!
    autocmd Colorscheme * hi Comment guifg=#808080
    autocmd ColorScheme * hi cursorlinenr guifg=#ffffff
    autocmd ColorScheme * hi LineNr guifg=#666699
    autocmd ColorScheme * hi PmenuSel guibg=#007acc
    autocmd ColorScheme * hi Pmenu  guibg=#282c34
    autocmd ColorScheme * hi PmenuSbar guibg =#00cccc
    autocmd ColorScheme * hi PmenuThumb guibg =#81A1C1
    autocmd ColorScheme * hi search guifg=#ffa600
    autocmd Colorscheme * hi GHTextViewDark guifg=#ffffff guibg=#4d4d4d
    autocmd Colorscheme * hi GHListDark guifg=#00cccc guibg=#282c34
]], true)

-- vim.g.vscode_style = "dark"
-- vim.cmd [[colorscheme vscode]]
vim.cmd [[colorscheme dracula]]
vim.g.dracula_colorterm = 0
