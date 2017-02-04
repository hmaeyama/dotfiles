export PATH="/usr/local/bin:$PATH"
fpath=(/usr/local/share/zsh-completions $fpath)

# functions
git_current_branch(){
  local ref
  ref=$(command git rev-parse --abbrev-ref HEAD 2> /dev/null)
  echo $ref
}

# aliases

## git
alias g='git'
alias gb='git branch'
alias gs='git status'
alias gp='git pull'
alias gch='git checkout'
alias gchb='git checkout -b'
alias ga='git add'
alias gcom='git commit -m'
alias gcoam='git commit -a -m'
alias ggpull='git pull origin ${git_current_branch}'
alias ggpush='git push origin ${git_current_branch}'
