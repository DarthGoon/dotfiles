set -o vi

ssh-add -K ~/.ssh/id_rsa

PROMPT_COMMAND='PS1X=$(p="${PWD#${HOME}}"; [ "${PWD}" != "${p}" ] && printf "~";IFS=/; for q in ${p:1}; do printf /${q:0:1}; done; printf "${q:1}")'

alias ls='ls -al'
alias del='rm -rf'
alias gist='git status'
alias gpll='git pull'
alias gpsh='git push'
alias gitm='git checkout master'
alias gitd='git checkout dev'
alias gbranch='git checkout'
alias gifetch='git fetch -a'

alias docleanup='docker-compose down;docker rm -v $(docker ps -a -q -f status=exited);docker rmi $(docker images -f "dangling=true" -q);docker volume rm $(docker volume ls -qf dangling=true);echo "Docker cleanup complete";'


if [[ $EUID = 0 ]]; # are you the root user?
  then
    export PS1=$'root : ${PS1X}/\[\e[97m\]$(__git_ps1)\[\e[m\] \[\e[31m\]\xe2\x88\x91\[\e[m\] '
  else
    export PS1=$'${PS1X}/\[\e[97m\]$(__git_ps1) \[\e[31m\]\xe2\x88\x91\[\e[0m\] '
fi

export PATH="/home/aaron/.linuxbrew/sbin:$PATH"
#export XDG_DATA_DIRS="/home/aaron/.linuxbrew/share:$XDG_DATA_DIRS"

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh" # This loads nvm
