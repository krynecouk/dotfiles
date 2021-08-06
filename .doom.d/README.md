# Personal Doom Emacs configuration

![Schreenshot of configured Emacs](screenshot/doom.png)

## [Installation on Mac](https://github.com/hlissner/doom-emacs/blob/develop/docs/getting_started.org#on-macos)

```sh
# required dependencies
brew install git ripgrep
# optional dependencies
brew install coreutils fd
# Installs clang
xcode-select --install

# emacs
brew tap railwaycat/emacsmacport
brew install emacs-mac --with-modules
ln -s /usr/local/opt/emacs-mac/Emacs.app /Applications/Emacs.app

# doom emacs
cp -r .doom.d ~/
doom sync
```
