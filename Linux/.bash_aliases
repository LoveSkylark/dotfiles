# ALIAS COMMANDS
alias ll='ls -alF'
alias la='ls -A'
alias l='ls -CF'
alias g="goto"
alias grep='grep --color'

# Kubectl & Helm commands
alias k="kubectl"
alias h="helm"

kn() {
    if [ "$1" != "" ]; then
            kubectl config set-context --current --namespace=$1
    else
            echo -e "\e[1;31m Error, please provide a valid Namespace\e[0m"
    fi
}

knd() {
    kubectl config set-context --current --namespace=default
}

ku() {
    kubectl config unset current-context
}

