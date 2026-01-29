alias vimtips='cat ~/.vim_shortcuts'
alias gittips='cat ~/.git_shortcuts'

killp() { kill -9 $(lsof -t -i:"$1" -sTCP:LISTEN); }

