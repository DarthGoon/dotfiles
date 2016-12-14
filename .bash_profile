set -o vi

source ~/.git-prompt.sh
source ~/.git-completion.bash

alias ll='ls -al'
alias vi='/usr/local/bin/vim'
alias gist='git status'
alias gpll='git pull'
alias gpsh='git push'
alias gfch='git fetch -a'

export PS1=$'\w/\e[97m$(__git_ps1) \e[31m\xe2\x88\x91\e[39m '
