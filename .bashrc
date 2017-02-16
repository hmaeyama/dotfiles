

# prompt
export PS1="\[\033[0;32m\][\u@\w]\[\e[0m\]\\$ "

# functions
git_current_branch(){
  local ref
  ref=$(command git rev-parse --abbrev-ref HEAD 2> /dev/null)
  echo $ref
}

# aliases

alias ls='ls --color'

alias ll='ls -al'

alias rm='rm -i'
alias cp='cp -i'
alias mv='mv -i'

## git
alias g='git'
alias gb='git branch'
alias gbd='git branch -d'
alias gs='git status'
alias gp='git pull'
alias gch='git checkout'
alias gchb='git checkout -b'
alias ga='git add'
alias gco='git commit'
alias gcom='git commit -m'
alias gcoam='git commit -a -m'
alias ggpull='git pull origin ${git_current_branch}'
alias ggpush='git push origin ${git_current_branch}'
