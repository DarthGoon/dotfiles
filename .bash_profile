set -o vi

test -e "${HOME}/.git-prompt.sh" && source ~/.git-prompt.sh || echo " Missing git prompt bash plugin"
test -e "${HOME}/.git-completion.bash" && source ~/.git-completion.bash || echo "Missing git completion bash plugin"
test -e "${HOME}/.iterm2_shell_integration.bash" && source "${HOME}/.iterm2_shell_integration.bash" || echo "Missing iterm2 shell integration"

alias ls='ls -al'
alias vi='/usr/local/bin/vim'
alias del='rm -rf'
alias gist='git status'
alias gpll='git pull'
alias gpsh='git push'
alias gitm='git checkout master'
alias gitd='git checkout develop'
alias gbranch='git checkout'

export NVM_DIR="/Users/aarondayalan/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh"  # This loads nvm


if [[ $EUID = 0 ]]; # are you the root user?
  then
    export PS1=$'root : \w/\[\e[97m\]$(__git_ps1)\[\e[m\] \[\e[31m\]\xe2\x88\x91\[\e[m\] '
  else
    export PS1=$'\w/\[\e[97m\]$(__git_ps1)\[\e[m\] \[\e[31m\]\xe2\x88\x91\[\e[m\] '
fi
