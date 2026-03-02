export CLICOLOR=1
alias ls='ls -G'

# Git
alias ga='git add'
alias gaa='git add .'
alias gb='git branch'
alias gc='git commit -m'
alias gca='git commit --amend'
alias gco='git checkout'
alias gd='git diff'
alias gl='git log'
alias gp='git push'
alias gpf='git push --force'
alias gu='git pull'
alias grb='git rebase'
alias gs='git status'
alias gsh='git show'
alias gsw='git switch'

# K8s
alias k=kubectl
alias kg="k get"
alias kd="k describe"

setopt PROMPT_SUBST

function k8s_context() {
    [[ "$SHOW_K8S" -ne 1 ]] && return

    local ctx=$(/usr/local/bin/kubectl config current-context 2>/dev/null)
    if [ -n "$ctx" ]; then
        local len=${#ctx}
        local mid=$((len / 2))

        local first=${ctx[1,$mid]}
        local second=${ctx[$mid+2,$len]}

        local cluster=$ctx
        if [[ "$first" == "$second" ]]; then
            cluster=$first
        fi

        cluster=${cluster//-production/}
        cluster=${cluster//-staging/}

        echo " %F{cyan}($cluster)%f"
    fi
}

# Adds the context and makes prompt look nice.
PROMPT='%B%F{green}%n@%m%f%b %B%F{blue}%1~%f%b$(k8s_context) %# '

