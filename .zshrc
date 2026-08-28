. "$HOME/.local/bin/env"

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

alias app="CORRIDOR_ENV=development venv/bin/corridor-app"
alias worker="CORRIDOR_ENV=development venv/bin/corridor-worker"

api() {
  nx run "corridor-api:$1" "${@2}"
}
ui() {
  nx run "corridor-ui:$1" "${@:2}"
}
