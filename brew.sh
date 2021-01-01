#!/bin/bash -eux

brew install fish
brew install tree
brew install curl
brew install wget
brew install direnv
brew install git
brew install peco
brew install ghq
brew install colordiff
brew install jq 
brew install fzf
brew install tig

brew install nodebrew
mkdir -p $HOME/.nodebrew/src

brew install --cask google-chrome
brew install --cask google-japanese-ime
brew install --cask iterm2
brew install --cask visual-studio-code
brew install --cask karabiner-elements
brew install --cask slack

exit 0
