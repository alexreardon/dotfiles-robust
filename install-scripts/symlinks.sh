#!/usr/bin/env sh

echo "Symlinks 🔀"

ln -sf ~/.dotfiles/.vimrc ~/.vimrc
ln -sf ~/.dotfiles/.zshrc ~/.zshrc
ln -sf ~/.dotfiles/git/.gitconfig ~/.gitconfig
ln -sf ~/.dotfiles/git/.gitignore ~/.gitignore

echo "VS Code 📝"

ln -sf ~/.dotfiles/vscode/settings.json ~/Library/Application\ Support/Code/User/settings.json
ln -sf ~/.dotfiles/vscode/keybindings.json ~/Library/Application\ Support/Code/User/keybindings.json
# ln -sf ~/.dotfiles/vscode/snippets/* ~/Library/Application\ Support/Code/User/snippets

echo "Keyboard 🎹"

ln -sf ~/.dotfiles/keyboard/karabiner.json ~/.config/karabiner/karabiner.json

echo "Symlinks finished 🔀"
