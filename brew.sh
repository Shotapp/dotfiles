#!/usr/bin/env bash

# Install command-line tools using Homebrew.

# Make sure we’re using the latest Homebrew.
brew update

# Upgrade any already-installed formulae.
brew upgrade

brew install ag
brew install coreutils
brew install grep
brew install git
brew install git-lfs
brew install rbenv
brew install pyenv
brew install nodenv
brew install go
brew install ghq
brew install peco
brew install fzf
brew install mas
brew install carthage
brew install jq
brew install tldr
brew install --cask zoomus
brew install --cask visual-studio-code
# Logi Capture
brew install --cask docker
brew install --cask proxyman
brew install --cask alfred
brew install --cask deepl
brew install --cask google-chrome
brew install --cask 1password
brew install --cask zeplin
brew install --cask bettertouchtool
brew install --cask karabiner-elements
brew install --cask reveal
brew install --cask sourcetree
brew install --cask gifox
brew install --cask skitch

# Remove outdated versions from the cellar.
brew cleanup
