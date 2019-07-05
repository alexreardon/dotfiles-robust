#!/usr/bin/env sh

echo "Brew 🍺"

echo "Installing brew"

/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

echo "Upgrading brew"

# Upgrade brew
brew upgrade

echo "Installing formula (cli tools)"

# Dependencies
brew install wget
brew install yarn
brew install trash
brew install nvm
brew install openssh
brew install openssl
brew install rename
brew install tree
brew install vim
brew install thefuck
brew install zsh-syntax-highlighting

echo "Installing casks (apps)"

# Browsers
brew cask install firefox
brew cask install google-chrome
brew cask install google-chrome-canary

# Editors
brew cask install visual-studio-code

# Tools

# Dev
brew cask install virtualbox
brew cask install ngrok

## Utilities
brew cask install freedom
brew cask install spectacle
brew cask install alfred
brew cask install 1password
brew cask install karabiner-elements # for mechanical keyboard

## Apps
brew cask install spotify
brew cask install dropbox
brew cask install sketch
brew cask install slack


echo "Cleaning up brew"

# Cleanup
brew cleanup

echo "Brew finished 🍻"
