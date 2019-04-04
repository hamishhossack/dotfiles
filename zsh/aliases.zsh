alias reload!='. ~/.zshrc'

alias cls='clear' # Good 'ol Clear Screen command

alias compile-ssh-config='cat ~/.ssh/config_local ~/.ssh/*/config_* > ~/.ssh/config'
alias ssh='compile-ssh-config && ssh'
alias ip='curl ipecho.net/plain && echo && ifconfig | sed -En "s/127.0.0.1//;s/.*inet (addr:)?(([0-9]*\.){3}[0-9]*).*/\2/p"'
alias reload!='. ~/.zshrc'
alias server='python -m SimpleHTTPServer 8000'
alias nodebabel='node -r "babel-register"'
alias nlint='npm run lint'
alias keygen='openssl rand -hex'
alias npmversion='echo $(node -p -e "require(\"./package.json\").version")'
alias community='gcloud container clusters get-credentials cluster-1 --zone europe-west1-b --project essensys-community && kubectl proxy'
alias community-uat='gcloud container clusters get-credentials cluster-uat --zone europe-west1-b --project essensys-community && kubectl proxy'
alias uuidgen="uuidgen | tr '[:upper:]' '[:lower:]'"
alias python='python3'
alias pip='pip3.7'