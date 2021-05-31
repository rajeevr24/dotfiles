-- For WSL Clipboard Support
vim.cmd('source ~/.config/nvim/vimscript/clipboard.vim')
-- For Ranger Integration
vim.cmd('source ~/.config/nvim/vimscript/ranger.vim')
-- Plugins
require('plugins')

-- LSP
--require('lsp')

-- For Code-Actions
--require('lsp-saga')
require('n-trouble')
--require'lsp_signature'.on_attach()
require('n-navigator')
-- Treesitter
require('treesitter')

-- For Tabs
require('buffer-line')

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
	--vim.g.material_style = "palenight"
	--require('material').set()
	vim.cmd[[colorscheme tokyonight]]
	vim.g.tokyonight_style = "night"
--	vim.g.tokyonight_italic_functions = true
-- KeyMappings
require('mappings')

-- Basic Tweaks
require('settings')
require('auto-pair')
require('galaxy-line')
require'colorizer'.setup()
-- Vim Commands
vim.cmd([[
" Better window navigation
	nnoremap <C-h> <C-w>h
	nnoremap <C-j> <C-w>j
	nnoremap <C-k> <C-w>k
	nnoremap <C-l> <C-w>l

" Leader Key
	let mapleader=","

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

" Telescope

	nnoremap <leader>ff <cmd>lua require('telescope.builtin').find_files()<cr>
	nnoremap <leader>fg <cmd>lua require('telescope.builtin').live_grep()<cr>
	nnoremap <leader>fb <cmd>lua require('telescope.builtin').buffers()<cr>
	nnoremap <leader>fh <cmd>lua require('telescope.builtin').help_tags()<cr>
	nnoremap <leader>fe <cmd>lua require('telescope.builtin').file_explorer()<cr>

" Trouble(lua settings not working)

 nnoremap <leader>xw <cmd>TroubleToggle lsp_workspace_diagnostics<cr>
 nnoremap <leader>xd <cmd>TroubleToggle lsp_document_diagnostics<cr>
 nnoremap <leader>xq <cmd>TroubleToggle quickfix<cr>
 nnoremap <leader>xl <cmd>TroubleToggle loclist<cr>
 nnoremap gR <cmd>TroubleToggle lsp_references<cr>
]])
