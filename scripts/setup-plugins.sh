#!/bin/bash -eux

echo "********************************************************************"
echo "Setup plugins"
echo "********************************************************************"
git clone --depth 1 git@github.com:zsh-users/zsh-autosuggestions.git $HOME/readonly-repos/zsh-users/zsh-autosuggestions
