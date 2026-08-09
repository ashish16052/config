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
for k in ['Up','Down','Left','Right']
  execute 'nnoremap <'..k..'> <Nop>'
  execute 'inoremap <'..k..'> <Nop>'
endfor
