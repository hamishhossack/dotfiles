alias compile-ssh-config='cat ~/.ssh/config_local ~/.ssh/*/config_* > ~/.ssh/config'
alias ssh='compile-ssh-config && ssh'
alias ip='curl ipecho.net/plain ; echo'
alias reload!='. ~/.zshrc'
alias pada='sh ~/Sites/padawan/docker-install/install-dev-env.sh'
alias server='python -m SimpleHTTPServer 8000'
