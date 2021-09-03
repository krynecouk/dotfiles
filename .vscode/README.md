# Personal Visual Studio Code configuration

## Prerequisites

- [vscode](https://code.visualstudio.com/)
- [vscodevim](https://marketplace.visualstudio.com/items?itemName=vscodevim.vim)

## Installation (Mac)

```sh
cp {settings.json,keybindings.json} /Users/<user>/Library/Application Support/Code/User
defaults write com.microsoft.VSCode ApplePressAndHoldEnabled -bool false         # For VS Code
defaults write com.microsoft.VSCodeInsiders ApplePressAndHoldEnabled -bool false # For VS Code Insider
defaults write com.visualstudio.code.oss ApplePressAndHoldEnabled -bool false    # For VS Codium
defaults delete -g ApplePressAndHoldEnabled                                      # If necessary, reset global default
defaults write com.jetbrains.intellij ApplePressAndHoldEnabled -bool false       # ideaVim, if necessary
```
