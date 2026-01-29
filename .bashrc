alias gittips='cat ~/.git_shortcuts'

killp() { kill -9 $(lsof -t -i:"$1" -sTCP:LISTEN); }

vi() {
  if [[ "$1" =~ ^[0-9]+$ ]]; then
    file=$(git diff --name-only | sed -n "${1}p")
    [ -z "$file" ] && echo "No such file" && return 1
    command vi "$file"
  else
    command vi "$@"
  fi
}

git() {
  if [[ "$1" == "diff" && "$2" =~ ^[0-9]+$ ]]; then
    file=$(command git diff --name-only | sed -n "${2}p")
    [ -z "$file" ] && echo "No such file" && return 1
    command git diff "$file"

  elif [[ "$1" == "add" && "$2" =~ ^[0-9]+$ ]]; then
    file=$(command git diff --name-only | sed -n "${2}p")
    [ -z "$file" ] && echo "No such file" && return 1
    command git add "$file"

  else
    command git "$@"
  fi
}

