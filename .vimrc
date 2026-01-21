set number relativenumber                         " show relative line number
set showmatch ignorecase hlsearch incsearch       " search settings
set expandtab shiftwidth=4 tabstop=4 autoindent   " tabs & indentation
set clipboard=unnamedplus                         " using system clipboard
set ttyfast                                       " Speed up scrolling in Vim
set noswapfile                                    " disable swap file
syntax on                                         " syntax highlighting
filetype plugin indent on                         " allow auto-indenting depending on file type

let $FZF_DEFAULT_OPTS='--delimiter=/ --with-nth=-3..'

" Plugin Section
call plug#begin("~/.vim/plugged")
  Plug 'junegunn/fzf', { 'do': { -> fzf#install() } } " Fuzzy finder (fzf)
  Plug 'junegunn/fzf.vim'
  Plug 'github/copilot.vim' " Copilot (works in Vim=>9.0)
call plug#end()

" FZF key mappings
let mapleader=" "
nnoremap <leader>sd :Files %:p:h<CR>
nnoremap <leader>sf :Files<CR>
nnoremap <leader>sg :Rg<CR>
nnoremap <leader>sh :History<CR>

" Disable Arrow keys in Normal/Insert mode
map <up> <nop>
map <down> <nop>
map <left> <nop>
map <right> <nop>
imap <up> <nop>
imap <down> <nop>
imap <left> <nop>
imap <right> <nop>
