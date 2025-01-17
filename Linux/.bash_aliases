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

kall() {
    kubectl get all
}

kall() {
    kubectl get all --all-namespaces
}

kbash() {
    if [ "$1" != "" ]; then
            kubectl exec --stdin --tty $1 -- /bin/bash
    else
            echo -e "Error, please provide a pod name"
      fi
}

# Helm commands
alias h="helm"
alias hl="helm list"
alias hall="helm list --all-namespaces"

hin() {
    if [ "$1" = "" ] | [ "$2" = "" ]; then
            echo -e "Error, please provide a release name, chart and value file"
    elif [ "$3" = "" ]; then
            helm install $1 $2 
    else 
            helm install $1 $2 -f $3 
      fi
}

hup()  {
    if [ "$1" = "" ] | [ "$2" = "" ]; then
            echo -e "Error, please provide a release name, chart and value file"
    elif [ "$3" = "" ]; then
            helm upgrade $1 $2 
    else 
            helm upgrade $1 $2 -f $3 
      fi
}

hun() {
    if [ "$1" != "" ]; then
            helm uninstall $1
    else
            echo -e "Error, please provide a release name"
      fi
}
