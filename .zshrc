# I don't want to see random new packages.
HOMEBREW_NO_UPDATE_REPORT_NEW=1

# Make `ls` output have colors.
export CLICOLOR=1

alias ga='git add'
alias gb='git branch'
alias gc='git commit'
alias gca='git commit --amend'
alias gco='git checkout'
alias gd='git diff'
alias glo='git log'
alias gp='git push'
alias gl='git pull'
alias grb='git rebase'
alias gst='git status'
alias gsw='git switch'

source ~/dotfiles/.kube_aliases.sh

# Make the shell prompt short.
PROMPT='%1~ %# '
