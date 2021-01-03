#!/bin/bash -eux

echo "********************************************************************"
echo "powerline font"
echo "********************************************************************"
git clone --depth 1 git@github.com:powerline/fonts.git $HOME/zsh-repos/powerline/fonts
sh $HOME/zsh-repos/powerline/fonts/install.sh
