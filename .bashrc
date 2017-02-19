

# prompt
export PS1="\[\033[0;32m\][\u@\w]\[\e[0m\]\\$ "

# functions
git_current_branch(){
  local ref
  ref=$(command git rev-parse --abbrev-ref HEAD 2> /dev/null)
  echo $ref
}

# aliases

alias l.='ls -d .* --color=auto'
alias ll='ls -l --color=auto'
alias ls='ls --color=auto'

alias md='mkdir -p'
alias rd='rmdir'

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
alias gco!='git commit --amend'
alias gcom='git commit -m'
alias gcoam='git commit -a -m'
alias gd='git diff'
alias ggpull='git pull origin ${git_current_branch}'
alias ggpush='git push origin ${git_current_branch}'
