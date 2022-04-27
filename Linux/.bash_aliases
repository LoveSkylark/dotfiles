# ALIAS COMMANDS
alias ll='ls -alF'
alias la='ls -A'
alias l='ls -CF'
alias g="goto"
alias grep='grep --color'

# Kubectl commands
alias k="kubectl"

kn() {
    if [ "$1" != "" ]; then
            kubectl config set-context --current --namespace=$1
    else
            echo -e "Error, please provide a valid Namespace"
    fi
}

knd() {
    kubectl config set-context --current --namespace=default
}

ku() {
    kubectl config unset current-context
}


# Helm commands
alias h="helm"
alias hl="helm list"

hin() {
    if [ "$1" != "" ] | [ "$2" != "" ]; then
            helm install $1 $2
    else
            echo -e "Error, please provide a release name and chart"
      fi
}

hup() {
    if [ "$1" != "" ] | [ "$2" != "" ]; then
            helm upgrade $1 $2
    else
            echo -e "Error, please provide a release name and chart"
      fi
}
