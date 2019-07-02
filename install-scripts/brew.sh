#!/usr/bin/env sh

echo "Brew 🍺"

echo "Installing brew"

/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

echo "Upgrading brew"

# Upgrade brew
brew upgrade

echo "Installing formula"

# Dependencies
brew install yarn
brew install trash
brew install nvm
brew install openssh
brew install openssl
brew install rename
brew install tree
brew install vim

echo "Brew Cask"

# Browsers
brew cask install firefox
brew cask install google-chrome
brew cask install google-chrome-canary

# Editors
brew cask install visual-studio-code

# Applications
brew cask install 1password
brew cask install dropbox
brew cask install sketch
brew cask install slack

# Cleanup
brew cleanup

echo "Brew finished 🍻"
