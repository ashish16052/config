set number relativenumber showmatch ignorecase hlsearch incsearch
set expandtab shiftwidth=4 tabstop=4 autoindent
set clipboard=unnamedplus noswapfile
filetype plugin indent on

let $FZF_DEFAULT_OPTS='--delimiter=/ --with-nth=-3..'
call plug#begin("~/.vim/plugged")
  Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
  Plug 'junegunn/fzf.vim'
call plug#end()

let mapleader=" "
nnoremap <leader>sd :Files %:p:h<CR>
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
