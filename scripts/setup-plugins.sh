#!/bin/bash -eux

echo "********************************************************************"
echo "Setup plugins"
echo "********************************************************************"
git clone git@github.com:agnoster/agnoster-zsh-theme.git --depth=1 $HOME/zsh-repos/themes
git clone git@github.com:zsh-users/zsh-autosuggestions.git
