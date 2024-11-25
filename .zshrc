alias ll='ls -alF'
alias vi='nvim'
alias e='emacs -nw'
alias es='emacs --fg-daemon'
alias ec='emacsclient -c'
alias cls="clear && printf '\e[3J'"
alias c="pbcopy"
alias pip="pip3"
alias pn=pnpm
alias pni='pnpm install'
alias mkcert="unset JAVA_HOME && mkcert"

export POETRY_HOME="/Users/Darius.Kryszczuk/Library/Application Support/pypoetry/venv/bin/bin/bin"
export KUBECONFIG="/Users/Darius.Kryszczuk/.kube/config"
export NVM_DIR="$HOME/.nvm"
export NVM_HOME="/opt/homebrew/opt/nvm"
export EMACS_HOME="$HOME/.emacs.d"
export BREW_HOME="/opt/homebrew"
export PYENV_ROOT="$HOME/.pyenv"

source $NVM_HOME/nvm.sh
source /Users/Darius.Kryszczuk/.docker/init-zsh.sh || true # Added by Docker Desktop

# pyenv config
# [[ -d $PYENV_ROOT/bin ]] && export PATH="$PYENV_ROOT/bin:$PATH"
# eval "$(pyenv init -)"

export PATH="${AQUA_ROOT_DIR:-${XDG_DATA_HOME:-$HOME/.local/share}/aquaproj-aqua}/bin:$PYENV_ROOT/bin:$POETRY_HOME:$EMACS_HOME/bin:$BREW_HOME/bin:$PATH"

eval "$(pyenv init -)"
