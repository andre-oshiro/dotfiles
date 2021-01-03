#!/bin/bash -eux

echo "********************************************************************"
echo "Setup plugins"
echo "********************************************************************"
git clone --depth 1 git@github.com:agnoster/agnoster-zsh-theme.git $HOME/zsh-repos/themes/agnoster
