# Personal Visual Studio Code configuration

## Plugins

- [vscodevim](https://marketplace.visualstudio.com/items?itemName=vscodevim.vim)
- [Bookmarks](https://marketplace.visualstudio.com/items?itemName=alefragnani.Bookmarks)
- [Multi-command](https://marketplace.visualstudio.com/items?itemName=ryuta46.multi-command)
- [One-Dark Plus](https://marketplace.visualstudio.com/items?itemName=zhuangtongfa.Material-theme)
- [edamagit](https://marketplace.visualstudio.com/items?itemName=kahole.magit)
- [JetBrains Mono](https://www.jetbrains.com/lp/mono/)
- [Github Copilot](https://marketplace.visualstudio.com/items?itemName=GitHub.copilot)
- [Github Copilot Chat](https://marketplace.visualstudio.com/items?itemName=GitHub.copilot-chat)
- [Prettier](https://marketplace.visualstudio.com/items?itemName=esbenp.prettier-vscode)
- [Gitlab Workflow](https://marketplace.visualstudio.com/items?itemName=GitLab.gitlab-workflow) (Optional)
- [Pylance](https://marketplace.visualstudio.com/items?itemName=ms-python.python)
- [Pretty Typescript Errors](https://marketplace.visualstudio.com/items?itemName=yoavbls.pretty-ts-errors)

## Installation (Mac)

```sh
cp {settings.json,keybindings.json} ~/Library/Application Support/Code/User
defaults write com.microsoft.VSCode ApplePressAndHoldEnabled -bool false         # For VS Code
defaults write com.microsoft.VSCodeInsiders ApplePressAndHoldEnabled -bool false # For VS Code Insider
defaults write com.visualstudio.code.oss ApplePressAndHoldEnabled -bool false    # For VS Codium
defaults delete -g ApplePressAndHoldEnabled                                      # If necessary, reset global default
defaults write com.jetbrains.intellij ApplePressAndHoldEnabled -bool false       # ideaVim, if necessary
```
