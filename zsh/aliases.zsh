alias compile-ssh-config='cat ~/.ssh/config_local ~/.ssh/config_* > ~/.ssh/config'
alias ssh='compile-ssh-config && ssh'
alias ip='curl ipecho.net/plain ; echo'
alias reload!='. ~/.zshrc'
