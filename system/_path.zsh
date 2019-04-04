export PATH="./bin:/usr/local/bin:/usr/local/sbin:$ZSH/bin:$PATH"
export MANPATH="/usr/local/man:/usr/local/mysql/man:/usr/local/git/man:$MANPATH"
export GOOGLE_APPLICATION_CREDENTIALS='/Users/hamishhossack/.config/gcloud/essensys-community-f7dd94d5a633.json'
export JAVA_HOME=$(/usr/libexec/java_home)
export ANDROID_HOME=$HOME/Library/Android/sdk
export PATH=$PATH:$ANDROID_HOME/emulator
export PATH=$PATH:$ANDROID_HOME/tools
export PATH=$PATH:$ANDROID_HOME/tools/bin
export PATH=$PATH:$ANDROID_HOME/platform-tools


# The next line updates PATH for the Google Cloud SDK.
if [ -f '/Users/hamish.hossack/infastructure/google-cloud-sdk/path.zsh.inc' ]; then . '/Users/hamish.hossack/infastructure/google-cloud-sdk/path.zsh.inc'; fi

# The next line enables shell command completion for gcloud.
if [ -f '/Users/hamish.hossack/infastructure/google-cloud-sdk/completion.zsh.inc' ]; then . '/Users/hamish.hossack/infastructure/google-cloud-sdk/completion.zsh.inc'; fi
