#!/bin/bash -eux

echo "********************************************************************"
echo "symbolyc links"
echo "********************************************************************"
ln -nfs $HOME/repos/dotfiles/.vimrc $HOME/.vimrc
ln -nfs $HOME/repos/dotfiles/.zshrc $HOME/.zshrc
ln -nfs $HOME/repos/dotfiles/.gitconfig $HOME/.gitconfig
mkdir $HOME/iterm2
ln -nfs $HOME/repos/dotfiles/iterm2/com.googlecode.iterm2.plist $HOME/iterm2/com.googlecode.iterm2.plist
