#!/bin/zsh
copy() { cp ~/.doom.d/{config.org,init.el,packages.el} ~/dev/dotfiles/.doom.d } && \
copy && git -C ~/dev/dotfiles commit -a
