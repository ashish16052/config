set nocompatible            " disable compatibility to old-time vi
set showmatch               " show matching 
set ignorecase              " case insensitive 
set hlsearch                " highlight search 
set incsearch               " incremental search
set expandtab               " converts tabs to white space
set shiftwidth=4            " width for autoindents
set autoindent              " indent a new line the same amount as the line just typed
set number                  " add line numbers
set wildmode=longest,list   " get bash-like tab completions
filetype plugin on
filetype plugin indent on   " allow auto-indenting depending on file type
syntax on                   " syntax highlighting
set clipboard=unnamedplus   " using system clipboard
set cursorline              " highlight current cursorline
set ttyfast                 " Speed up scrolling in Vim


" Telescope key mappings
let mapleader=" "
nnoremap <leader>sf <cmd>Telescope find_files<CR>
nnoremap <leader>sg <cmd>Telescope live_grep<CR>
nnoremap <leader>s. <cmd>Telescope oldfiles<CR>


" Plugin Section
call plug#begin("~/.vim/plugged")

  " Telescope (fuzzy finder)
  Plug 'nvim-lua/plenary.nvim'
  Plug 'nvim-telescope/telescope.nvim'

  " copilot
  Plug 'github/copilot.vim'

call plug#end()


lua << EOF
-- Telescope configuration
require('telescope').setup{
  defaults = {
    path_display = { "truncate" }
  }
}
EOF

