#!/bin/bash -eu

if which brew; then
    brew --version
else
    echo "********************************************************************"
    echo "Install homebrew"
    echo "********************************************************************"
    /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
fi

echo "********************************************************************"
echo "Excecute brew.sh."
echo "********************************************************************"
sh ./brew.sh

readonly SHELL_LIST="/etc/shells"
readonly SHELL_FISH="/usr/local/bin/fish"
hasFish=true
while read LINE; do
    if [ "$LINE" = "$SHELL_FISH" ]; then
        echo "********************************************************************"
        echo "fish is already added."
        echo "********************************************************************"
        hasFish=false
    fi
done < $SHELL_LIST

if $hasFish; then
    echo "********************************************************************"
    echo "Adding fish."
    echo "********************************************************************"
    echo $SHELL_FISH | sudo tee -a $SHELL_LIST
fi

if [ "$SHELL" != "$SHELL_FISH" ]; then
    echo "********************************************************************"
    echo "Change default shell to fish."
    echo "********************************************************************"
    chsh -s $SHELL_FISH
fi

echo "********************************************************************"
echo "Install powerline font."
echo "********************************************************************"
git clone https://github.com/powerline/fonts.git --depth=1 $HOME/repos/fonts/powerline/fonts
sh $HOME/repos/fonts/powerline/fonts/install.sh

echo "********************************************************************"
echo "Create symbolyc links."
echo "********************************************************************"
mkdir $HOME/iterm2
ln -s $HOME/repos/dotfiles/config.fish $HOME/.config/fish/config.fish
ln -s $HOME/repos/dotfiles/.vimrc $HOME/.vimrc
ln -s $HOME/repos/dotfiles/.iterm2.plist $HOME/iterm2/com.googlecode.iterm2.plist
ln -s $HOME/repos/dotfiles/.gitconfig $HOME/.gitconfig

echo "********************************************************************"
echo "Install oh-my-fish."
echo "********************************************************************"
curl -L http://get.oh-my.fish | fish
omf install bobthefish

echo "********************************************************************"
echo "Install stable node version."
echo "********************************************************************"
nodebrew install stable
nodebrew use stable

echo "********************************************************************"
echo "Install VScode Extensions."
echo "********************************************************************"
code --install-extension DavidAnson.vscode-markdownlint
code --install-extension bierner.markdown-preview-github-styles
code --install-extension bierner.markdown-checkbox
code --install-extension mdickin.markdown-shortcuts
code --install-extension eamodio.gitlens
code --install-extension angular.ng-template
code --install-extension arjun.swagger-viewer
code --install-extension ritwickdey.liveserver
code --install-extension equinusocio.vsc-material-theme
code --install-extension isayme.vscode-prettier-standard
code --install-extension hookyqr.beautify
code --install-extension sidthesloth.html5-boilerplate
code --install-extension dbaeumer.vscode-eslint

echo "********************************************************************"
echo "Done"
echo "********************************************************************"
exit 0
