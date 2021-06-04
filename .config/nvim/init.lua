-- For WSL Clipboard Support
vim.cmd('source ~/.config/nvim/vimscript/clipboard.vim')
-- For Ranger Integration
vim.cmd('source ~/.config/nvim/vimscript/ranger.vim')
-- Plugins
require('plugins')

-- For Code-Actions and LSP

--require('lsp-saga')
-- require('lsp')
require('n-trouble')
require('n-navigator')

-- Treesitter
require('treesitter')

-- File Explorer
require('tree')

-- For Commentary
require('commentary')

-- Settings that work for me
require('settings')
-- File Explorer

-- For Telescope(Need To Fix This)
require('tele-scope')

-- For Cool Welcome Screen
require('dashboard')

-- Auto-Completion
require('completion')
vim.o.completeopt = "menuone,noselect"

--Colorscheme
    local base16 = require 'base16'
    base16(base16.themes.snazzy, true)
    -- base16(base16.themes.brewer, true)
    -- base16(base16.themes.twilight, true)
    -- base16(base16.themes.porple, true)
    -- base16(base16.themes.woodland, true)
    -- base16(base16.themes.circus, true)
    -- base16(base16.themes.atlas, true)
    -- base16(base16.themes["onedark"], true)
	-- vim.g.material_style = "darker"
	-- require('material').set()
    -- require('solarized').set()

-- KeyMappings
require('mappings')

-- Basic Tweaks
require('settings')
require('auto-pair')
require('custom_highlights')
-- Smooth Scroll
require('neoscroll').setup()
-- require('galaxy-line')
require('status-bar')
require'colorizer'.setup()
require('icon')

-- For Tabs
-- require('barbar')
require('tabs')

-- Vim Commands
vim.cmd([[
" Better window navigation
	nnoremap <C-h> <C-w>h
	nnoremap <C-j> <C-w>j
	nnoremap <C-k> <C-w>k
	nnoremap <C-l> <C-w>l

" Leader Key
	let mapleader=" "

" TAB in general mode will move to text buffer
	nnoremap <silent> <TAB> :bnext<CR>
" SHIFT-TAB will go back
	nnoremap <silent> <S-TAB> :bprevious<CR>

" Move selected line / block of text in visual mode
" shift + k to move up
" shift + j to move down
	xnoremap K :move '<-2<CR>gv-gv
	xnoremap J :move '>+1<CR>gv-gv


" Alternate way to save
	nnoremap <silent> <C-s> :w<CR>
	nnoremap <silent> <C-x> :wq!<CR>
"Use control-c instead of escape
	nnoremap <silent> <C-c> <Esc>

]])
