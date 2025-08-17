set number        " show line number
set hlsearch	  " highlight search

set autoindent    " add indentation when moving to next line

set expandtab     " use space for indenting, even when you press 'Tab'
set tabstop=4     " 4 spaces for line indent

let &t_SI = "\e[5 q"  " blinking cursor on start insert
let &t_EI = "\e[2 q"  " steady bar on end insert
