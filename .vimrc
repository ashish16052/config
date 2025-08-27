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
set ttyfast                 " Speed up scrolling in Vim
set tabstop=4               " 4 spaces for line indent

let &t_SI = "\e[5 q"  " blinking cursor on start insert
let &t_EI = "\e[2 q"  " steady bar on end insert

" Leader key
let mapleader=" "

" Plugin Section
call plug#begin("~/.vim/plugged")

  " Fuzzy finder (fzf instead of Telescope)
  Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
  Plug 'junegunn/fzf.vim'

  " Copilot (works in Vim=>9.0)
  Plug 'github/copilot.vim'

call plug#end()

" FZF key mappings
nnoremap <leader>sf :Files<CR>
nnoremap <leader>sg :Rg<CR>
nnoremap <leader>s. :History<CR>
