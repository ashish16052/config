# Setup Rules

1. As native as possible
2. Minimal steps to recreate
3. Separation of concerns
4. Single Source of truth

---

# Vim
Ubuntu
```
sudo apt install vim-gtk3
```

MacOS
```
brew install vim
```

need version >= 9.0 for copilot support
need +clipboard support for system clipboard support

## Terminal
use vim motions for terminal commands

1. copy .inputrc
2. activate by:
```
bind -f ~/.inputrc
```
---

# Mac setup

## Brew Setup:
```
$ /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
$ echo >> /Users/ashish/.zprofile
$ echo 'eval "$(/opt/homebrew/bin/brew shellenv)"' >> Users/ashish/.zprofile
$ eval "$(/opt/homebrew/bin/brew shellenv)"
```

## Git setup
```
$ brew install git
$ git config --global user.name "ashish16052"
$ git config --global user.email "ashishmohite16052@gmail.com"
$ git config --global core.editor "nano -w"
```

## Python Setup
Homebrew should automatically install python3

## Node Setup:
```
$ brew install node
$ echo 'export PATH="/opt/homebrew/opt/node@20/bin:$PATH"' >> ~/.zshrc
$ node -v

```

Create ‘**Developer’ **folder in home directory - should create a special folder with 🔨 icon

---

# AI tools
1. Github Copilot with vim
2. Opencode for terminal

---

# Browser
search engine - duckduckgo
1. safari - mac, iphone
2. min/edge - windows

---

# Oracle machine

140.245.10.192
[https://cloud.oracle.com/?region=ap-mumbai-1](https://cloud.oracle.com/?region=ap-mumbai-1)

To ssh:
```
sudo ssh-add --apple-use-keychain ~/.ssh/ssh-key-2025-07-24.key
sudo ssh opc@140.245.10.192
```

