export NVM_DIR="$HOME/.nvm"
export NVM_HOME="/usr/local/opt/nvm"
export EMACS_HOME="$HOME/.emacs.d"
export JAVA_HOME="/usr/local/opt/openjdk@11"
export LUA_HOME="/usr/local/opt/lua-language-server"
export LUA_LSP="/usr/local/opt/lua-language-server/bin"
export PATH="$PATH:$EMACS_HOME/bin:$JAVA_HOME/bin:/usr/local/sbin:$KAFKA_HOME/bin:$PYTHONPATH:$LUA_HOME/bin"

GPG_TTY=$(tty)
export GPG_TTY
