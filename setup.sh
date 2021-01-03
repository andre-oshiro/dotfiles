#!/bin/bash -eu

## Install Apps
sh ./scripts/brew.sh

## Download Powerline font
sh ./scripts/setup-font.sh

## Create Files
sh ./scripts/setup-files.sh

## Setup NodeJS
sh ./scripts/setup-nodebrew.sh

## Set VScode extensions
sh ./scripts/setup-vscode.sh

exit 0
