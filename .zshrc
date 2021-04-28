source /usr/local/etc/bash_completion.d/git-prompt.sh
GIT_PS1_SHOWDIRTYSTATE=true
export LANG=ja_JP.UTF-8
if [ $UID -eq 0 ]; then
     PS1='\[\033[31m\]\u@\h\[\033[00m\]:\[\033[33m\]\w\[\033[31m\]$(__git_ps1)\[\033[00m\]\n\$ '
else
     PS1='\[\033[34m\]\u@\h\[\033[00m\]:\[\033[33m\]\w\[\033[31m\]$(__git_ps1)\[\033[00m\]\n\$ '
fi
alias ls='ls -FG'
alias ll='ls -alhFG'
alias rm='rm -i'
alias ..='cd ..'
alias mv='mv -i'
alias cp='cp -i'
alias la='ls -a'
alias vi='vim'

autoload -U promptinit; promptinit
prompt pure


export PATH="/usr/local/opt/mysql@5.6/bin:$PATH"

# Node.js
export PATH=$HOME/.nodebrew/current/bin:$PATH

# Android
export ANDROID_HOME=$HOME/Library/Android/sdk
export PATH=$PATH:$ANDROID_HOME/emulator
export PATH=$PATH:$ANDROID_HOME/tools
export PATH=$PATH:$ANDROID_HOME/tools/bin
export PATH=$PATH:$ANDROID_HOME/platform-tools
export PATH="/usr/local/opt/sqlite/bin:$PATH"
export PATH=$PATH:$ANDROID_HOME/build-tools/28.0.3
alias ala='android list avd'
alias em='emulator'

# iOS
alias xcclean='rm -rf ~/Library/Developer/Xcode/DerivedData'

# Python
export PYENV_ROOT="$HOME/.pyenv"
export PATH="$PYENV_ROOT/bin:$PATH"
eval "$(pyenv init -)"

alias macvim="mvim --remote-tab-silent"

# Git
alias g='git'
alias gc='git commit'
alias gcm='git commit -m'
alias gpo='git push origin'
alias gs='git status'
alias gch='git checkout'
alias gb='git branch'
alias gl='git log --numstat --graph --date=format:'%Y/%m/%d %H:%M:%S''

# Docker
alias dk='docker'
alias dkp='docker ps'
alias dkex='docker exec -it'
alias doc='docker-compose'

# Yarn
export PATH="$HOME/.yarn/bin:$HOME/.config/yarn/global/node_modules/.bin:$PATH"

# Ruby
[[ -d ~/.rbenv  ]] && \
  export PATH=${HOME}/.rbenv/bin:${PATH} && \
  eval "$(rbenv init -)"
export PATH="/usr/local/opt/openssl@1.1/bin:$PATH"

# Flutter
export PATH="$PATH:$HOME/development/flutter/bin"
alias fl='flutter'

