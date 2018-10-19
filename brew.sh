#!/bin/bash -eux

brew install fish
brew install tree
brew install curl
brew install wget
brew install git
brew install git-flow
brew install direnv

brew tap caskroom/cask
brew cask install google-chrome
brew cask install google-japanese-ime
brew cask install iterm2
brew cask install coteditor
brew cask install visual-studio-code
brew cask install google-cloud-sdk

exit 0
