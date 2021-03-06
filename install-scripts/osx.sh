#!/usr/bin/env sh

# https://pawelgrzybek.com/change-macos-user-preferences-via-command-line/

echo "Configuring your Mac 💻"

echo "Keyboard preferences ⌨️"
# System Preferences > Keyboard >
defaults write NSGlobalDomain KeyRepeat -int 2

# System Preferences > Keyboard >
defaults write NSGlobalDomain InitialKeyRepeat -int 15

echo "System preferences"

# System Preferences > Dock > Size:
defaults write com.apple.dock tilesize -int 36

# System Preferences > Dock > Magnification:
defaults write com.apple.dock magnification -bool false

# System Preferences > Dock > Size (magnified):
defaults write com.apple.dock largesize -int 54

# System Preferences > Dock > Automatically hide and show the Dock:
defaults write com.apple.dock autohide -bool false

# System Preferences > Dock > Minimize windows into application icon
defaults write com.apple.dock minimize-to-application -bool true

# System Preferences > General > Click in the scrollbar to: Jump to the spot that's clicked
defaults write -globalDomain "AppleScrollerPagingBehavior" -bool true

# System Preferences > Dock > Show indicators for open applications
defaults write com.apple.dock show-process-indicators -bool true

echo "Finder"

# Finder > Preferences > Show all filename extensions
defaults write NSGlobalDomain AppleShowAllExtensions -bool true

# Finder > Preferences > Show wraning before changing an extension
defaults write com.apple.finder FXEnableExtensionChangeWarning -bool false

# Finder > View > Show Path Bar
defaults write com.apple.finder ShowPathbar -bool true

# Finder > Show hidden files
defaults write com.apple.finder AppleShowAllFiles -bool true

echo "Mission Control"

# System Preferences > Mission Controll > Automatically rearrange Spaces based on most recent use
defaults write com.apple.dock mru-spaces -bool false

echo "Misc 📦"

# Completely Disable Dashboard
defaults write com.apple.dashboard mcx-disabled -bool true

# Kill affected apps
for app in "Dock" "Finder"; do
  killall "${app}" > /dev/null 2>&1
done

echo "Mac configuration finished 💻"
echo "Note that some of these changes require a logout/restart to take effect."
