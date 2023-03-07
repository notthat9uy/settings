#!/bin/sh
#

mkdir -p $HOME/tools

# ohmyzsh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

# powerlevel10k
git clone --branch v1.17.0 https://github.com/romkatv/powerlevel10k.git $HOME/tools/powerlevel10k
echo 'source $HOME/tools/powerlevel10k/powerlevel10k.zsh-theme' >> $HOME/.zshrc
echo 'You may need to disable the existing theme in ohmyzsh'

# Wrap up install
echo 'Open iterm2 and follow tutorial (Recommend adding font)'
echo 'Update .zshrc with local settings as needed'