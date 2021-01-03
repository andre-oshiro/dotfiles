#!/bin/bash -eu

mkdir $HOME/iterm2

## Install Apps
sh ./scripts/brew.sh

## Download Powerline font
sh ./scripts/setup-font.sh

## Download Plugins
sh ./scripts/setup-plugins.sh

## Setup Symlinks
sh ./scripts/setup-symlinks.sh

## Setup NodeJS
sh ./scripts/setup-nodebrew.sh

## Set VScode extensions
sh ./scripts/setup-vscode.sh

exit 0
