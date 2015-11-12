alias reload!='. ~/.zshrc'
alias compile-ssh-config='cat ~/.ssh/config_local ~/.ssh/config_* > ~/.ssh/config'
alias ssh='compile-ssh-config && ssh'
