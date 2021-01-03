#!/bin/bash -eu

## Install Apps
sh ./brew.sh

## Download Powerline font
sh ./setup-font.sh

## Create Files
sh ./setup-files.sh

## Setup NodeJS
sh ./setup-nodebrew.sh

## Set VScode extensions
sh ./setup-vscode.sh

exit 0
