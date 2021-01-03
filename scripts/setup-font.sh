#!/bin/bash -eux

echo "********************************************************************"
echo "powerline font"
echo "********************************************************************"
git clone git@github.com:powerline/fonts.git --depth=1 $HOME/repos/powerline/fonts
sh $HOME/repos/powerline/fonts/install.sh
