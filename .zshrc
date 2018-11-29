source /usr/local/etc/bash_completion.d/git-prompt.sh
GIT_PS1_SHOWDIRTYSTATE=true
export LANG=ja_JP.UTF-8
if [ $UID -eq 0 ]; then
     PS1='\[\033[31m\]\u@\h\[\033[00m\]:\[\033[33m\]\w\[\033[31m\]$(__git_ps1)\[\033[00m\]\n\$ '
else
     PS1='\[\033[34m\]\u@\h\[\033[00m\]:\[\033[33m\]\w\[\033[31m\]$(__git_ps1)\[\033[00m\]\n\$ '
fi
alias ls='ls -FG'
alias ll='ls -alFG'
alias rm='rm -i'
alias ..='cd ..'
alias mv='mv -i'
alias cp='cp -i'
alias la='ls -a'
alias vi='vim'
alias gs='git status'

autoload -U promptinit; promptinit
prompt pure


