local opt = vim.opt
-- Enable term GUI colors
opt.termguicolors = true

-- Required to keep multiple buffers open multiple buffers
opt.hidden = true

-- Fixing line
vim.cmd([[set nowrap]])

-- Enable mouse
opt.mouse = 'a'

-- Show current line number
opt.number = true

-- Don't need showmode
opt.showmode = false
opt.shortmess:append "c"

-- Show command Height
opt.cmdheight = 1

-- Set signcolumn
opt.signcolumn = 'yes'

-- Show relative line number
opt.relativenumber = true

-- Enable highlighting of current line and column
opt.cursorline = true
-- opt.cursorcolumn = true

-- Fixing tab and space
opt.tabstop = 4
opt.shiftwidth = 4
opt.expandtab = true

-- Fixing Indent
opt.smartindent = true

-- Fixing Search
opt.ignorecase = true
opt.smartcase = true

-- Horizontal split will be below
opt.splitbelow = true

-- Vertical split will be to the right
opt.splitright = true

-- Decreasing Update time
opt.updatetime = 100

-- Make Line Visible
opt.scrolloff = 10

-- Clipboard
vim.cmd([[set clipboard=unnamedplus ]])

-- shell to use for `!`, `:!`, `system()` etc.
opt.shell = 'sh'

 -- DOWNWARDS ARROW WITH TIP RIGHTWARDS (U+21B3, UTF-8: E2 86 B3)
opt.showbreak     = '↳ '

-- automatically hard wrap at 80 columns
opt.textwidth     = 80
