local opt = vim.opt

-- Enable term GUI colors
opt.termguicolors = true

-- Required to keep multiple buffers open multiple buffers
opt.hidden = true

-- Fixing line
-- vim.cmd([[set nowrap]])

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
opt.softtabstop = 4
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
opt.scrolloff = 5

-- No Swapfiles
opt.swapfile = false

-- Clipboard
vim.cmd([[set clipboard=unnamedplus ]])

vim.opt.fillchars = {
    diff = '∙', -- BULLET OPERATOR (U+2219, UTF-8: E2 88 99)
    eob = ' ', -- NO-BREAK SPACE (U+00A0, UTF-8: C2 A0) to suppress ~ at EndOfBuffer
    fold = '·', -- MIDDLE DOT (U+00B7, UTF-8: C2 B7)
    vert = '┃' -- BOX DRAWINGS HEAVY VERTICAL (U+2503, UTF-8: E2 94 83)
}

-- shell to use for `!`, `:!`, `system()` etc.
opt.shell = 'sh'

-- DOWNWARDS ARROW WITH TIP RIGHTWARDS (U+21B3, UTF-8: E2 86 B3)
opt.showbreak = '↳ '

-- automatically hard wrap at 80 columns
opt.textwidth = 80

-- show whitespace
opt.list = true
opt.listchars = {
    nbsp = '⦸', -- CIRCLED REVERSE SOLIDUS (U+29B8, UTF-8: E2 A6 B8)
    extends = '»', -- RIGHT-POINTING DOUBLE ANGLE QUOTATION MARK (U+00BB, UTF-8: C2 BB)
    precedes = '«', -- LEFT-POINTING DOUBLE ANGLE QUOTATION MARK (U+00AB, UTF-8: C2 AB)
    tab = '▷┅', -- WHITE RIGHT-POINTING TRIANGLE (U+25B7, UTF-8: E2 96 B7) + BOX DRAWINGS HEAVY TRIPLE DASH HORIZONTAL (U+2505, UTF-8: E2 94 85)
    trail = '•' -- BULLET (U+2022, UTF-8: E2 80 A2)
}
