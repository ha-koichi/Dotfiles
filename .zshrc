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
export PATH="/usr/local/opt/node@8/bin:$PATH"
export ANDROID_HOME=$HOME/Library/Android/sdk
export PATH=$PATH:$ANDROID_HOME/emulator
export PATH=$PATH:$ANDROID_HOME/tools
export PATH=$PATH:$ANDROID_HOME/tools/bin
export PATH=$PATH:$ANDROID_HOME/platform-tools
export PATH="/usr/local/opt/sqlite/bin:$PATH"

export PYENV_ROOT="$HOME/.pyenv"
export PATH="$PYENV_ROOT/bin:$PATH"
eval "$(pyenv init -)"

alias macvim="mvim --remote-tab-silent"

# Mac Development
alias clean='rm -rf ~/Library/Developer/Xcode/DerivedData'

# Git
alias g='git'
alias gc='git commit'
alias gcm='git commit -m'
alias gpo='git push origin'
alias gs='git status'
alias gch='git checkout'

# Docker
alias dk='docker'
alias dkexe='docker exec -it'
