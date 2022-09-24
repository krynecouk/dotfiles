alias ll='ls -alF'
alias vi='nvim'
alias e='emacs -nw'
alias es='emacs --fg-daemon'
alias ec='emacsclient -c'
alias cls="clear && printf '\e[3J'"
alias c="pbcopy"

source $NVM_HOME/nvm.sh
autoload -Uz compinit && compinit
[[ /usr/local/bin/kubectl ]] && source <(kubectl completion zsh)
