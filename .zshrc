alias ll='ls -alF'
alias vi='nvim'
alias cls="clear && printf '\e[3J'"
alias c="pbcopy"
alias pip="pip3"
alias pn=pnpm
alias gg="gitu"
# alias mkcert="unset JAVA_HOME && mkcert"
#
# export VISUAL="zed --wait"
# export EDITOR="zed --wait"
# export GIT_EDITOR="zed --wait"

export POETRY_HOME="$HOME/Library/Application Support/pypoetry/venv/bin/bin/bin"
export KUBECONFIG="$HOME/.kube/config"
export NVM_DIR="$HOME/.nvm"
export NVM_HOME="/opt/homebrew/opt/nvm"
export EMACS_HOME="$HOME/.emacs.d"
export BREW_HOME="/opt/homebrew"
export PYENV_ROOT="$HOME/.pyenv"
export CARGO_HOME="$HOME/.cargo"
# export DOCKER_HOST="unix:///$HOME/.docker/run/docker.sock"
# export DOCKER_HOST="unix:///var/run/docker.sock"

source $NVM_HOME/nvm.sh
source /Users/Darius.Kryszczuk/.docker/init-zsh.sh || true # Added by Docker Desktop

# pyenv config
# [[ -d $PYENV_ROOT/bin ]] && export PATH="$PYENV_ROOT/bin:$PATH"
# eval "$(pyenv init -)"

export PATH="${AQUA_ROOT_DIR:-${XDG_DATA_HOME:-$HOME/.local/share}/aquaproj-aqua}/bin:$PYENV_ROOT/bin:$POETRY_HOME:$EMACS_HOME/bin:$BREW_HOME/bin:$CARGO_HOME/bin:$PATH"

eval "$(pyenv init -)"

# pnpm
export PNPM_HOME="/Users/Darius.Kryszczuk/Library/pnpm"
case ":$PATH:" in
  *":$PNPM_HOME:"*) ;;
  *) export PATH="$PNPM_HOME:$PATH" ;;
esac
# pnpm end
