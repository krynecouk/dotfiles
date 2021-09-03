#!/bin/zsh
copyDoom() { cp ~/.doom.d/{config.org,init.el,packages.el} ~/dev/dotfiles/.doom.d } && \
copyNvim() { cp ~/.config/nvim/{init.vim,plug.vim,ui.vim} ~/dev/dotfiles/nvim } && \
copyVscode() { cp /Users/darius.kryszczuk/Library/Application\ Support/Code/User/{settings.json,keybindings.json} ~/dev/dotfiles/.vscode } && \
copyIdeavimrc() { cp ~/.ideavimrc ~/dev/dotfiles/.idea/.ideavimrc } && \
copyDoom && copyNvim && copyVscode && copyIdeavimrc && git add . && git commit -a
