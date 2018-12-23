#!/bin/bash -eu

# brew install
    sh ./brew.sh

# fish
    readonly SHELL_LIST="/etc/shells"
    readonly SHELL_FISH="/usr/local/bin/fish"

    ### 追加されていない場合、末尾に /usr/local/bin/fish を追加
    isNeedAddShell=true
    while read LINE; do
        if [ "$LINE" = "$SHELL_FISH" ]; then
            echo "fish は追加済み"
            isNeedAddShell=false
        fi
    done < $SHELL_LIST

    if $isNeedAddShell; then
        echo "fish を追加"
        echo $SHELL_FISH | sudo tee -a $SHELL_LIST
    fi

    ### デフォルトシェルを fish に変更
    if [ "$SHELL" != "$SHELL_FISH" ]; then
        echo "デフォルトシェルを fish に変更"
        chsh -s $SHELL_FISH
    fi

    ### oh-my-fish インストール
    curl -L http://get.oh-my.fish | fish

    ### bobthefish インストール
    omf install bobthefish

    ### powerline_fonts インストール
    git clone https://github.com/powerline/fonts.git --depth=1 $HOME/repos/$USER/fonts/powerline/fonts
    sh $HOME/repos/$USER/fonts/powerline/fonts/install.sh

    ### config.fish シンボリックリンクを作成
    ln -s $HOME/repos/$USER/dotfiles/_config.fish $HOME/.config/fish/config.fish

# Vim
    ### .vimrc シンボリックリンクを作成
    ln -s $HOME/repos/$USER/dotfiles/_vimrc $HOME/.vimrc

# git
    ### .gitconfig シンボリックリンクを作成
    ln -s $HOME/repos/$USER/dotfiles/_gitconfig $HOME/.gitconfig

# nodebrew
    ### nodebrew インストール
    curl -L git.io/nodebrew | perl - setup
    nodebrew install stable
    nodebrew use stable

# vscode
    ### 拡張機能インストール
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


# exit
    echo "完了"
    exit 0
