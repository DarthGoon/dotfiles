set -o vi

source ~/.git-prompt.sh
source ~/.git-completion.bash

alias ll='ls -al'
alias vi='/usr/local/bin/vim'
alias del='rm -rf'
alias gist='git status'
alias gpll='git pull'
alias gpsh='git push'
alias gfch='git fetch -a'

export PS1=$'\w/\[\e[97m\]$(__git_ps1)\[\e[m\] \[\e[31m\]\xe2\x88\x91\[\e[m\] '

export NVM_DIR="/Users/aarondayalan/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh"  # This loads nvm
