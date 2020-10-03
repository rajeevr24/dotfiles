call plug#begin('~/.config/nvim/autoload/plugged')
"Better Syntax Support
Plug 'sheerun/vim-polyglot'
"File Explorer
Plug 'scrooloose/NERDTree'
" Auto pairs for '(' '[' '{'
Plug 'jiangmiao/auto-pairs'
Plug 'neoclide/coc.nvim', {'branch': 'release'}    
Plug 'itchyny/lightline.vim'
"Theme
Plug 'morhetz/gruvbox'
Plug 'joshdick/onedark.vim'
"Fancy Status Bar
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
"Icons for diffrent file type
Plug 'ryanoasis/vim-devicons'
" Fancy Start Screen For nvim
Plug 'mhinz/vim-startify'
call plug#end()
