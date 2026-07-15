set number relativenumber showmatch ignorecase hlsearch incsearch
set expandtab shiftwidth=4 tabstop=4 autoindent
set clipboard=unnamed noswapfile mouse=a
set foldmethod=indent foldlevel=99 foldenable
syntax enable
filetype plugin indent on
let $FZF_DEFAULT_OPTS='--delimiter=/ --with-nth=-3..'
call plug#begin("~/.vim/plugged")
  Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
  Plug 'junegunn/fzf.vim'
  Plug 'preservim/nerdtree'
  Plug 'dense-analysis/ale'
call plug#end()
let g:ale_linters = {'python': ['pyright']}
nnoremap <silent> gd :ALEGoToDefinition<CR>
nnoremap <silent> <RightMouse> <LeftMouse>:ALEGoToDefinition<CR>
let g:NERDTreeMouseMode = 3
function! ToggleExplorer()
  if exists('t:NERDTreeBufName') && bufwinnr(t:NERDTreeBufName) != -1
    NERDTreeClose
  elseif empty(expand('%:p'))
    NERDTree
  else
    NERDTreeFind
  endif
endfunction
let mapleader=" "
nnoremap <silent> <leader>p :Files<CR>
nnoremap <silent> <leader>f :RG<CR>
nnoremap <silent> <leader>b :call ToggleExplorer()<CR>
nnoremap <leader>h :History<CR>
for k in ['Up', 'Down', 'Left', 'Right']
  execute 'nnoremap <' .. k .. '> <Nop>'
  execute 'inoremap <' .. k .. '> <Nop>'
endfor
