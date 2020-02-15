export ZSH="/home/darius/.oh-my-zsh"
ZSH_THEME="bira"
plugins=(git)
source $ZSH/oh-my-zsh.sh

# User configuration
alias vi=nvim

if [[ -n ${INSIDE_EMACS} ]]; then
    unsetopt zle
fi

NPM_PACKAGES="${HOME}/.npm-packages"

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

export PATH="$HOME/.yarn/bin:$HOME/.config/yarn/global/node_modules/.bin:$HOME/.nvm/versions/node/v12.7.0/bin:$NVM_DIR:$NVM_DIR/nvm.sh:$PATH"

[ -f ~/.fzf.bash ] && source ~/.fzf.bash
