#!/bin/sh

# Check for updates
sudo apt-get update

# Basic utilities 
yes Y | sudo apt-get install vim git cmake tmux p7zip-full xclip

# Change for high DPI
gsettings set org.gnome.desktop.interface scaling-factor 2

# Turn off display sleep
gsettings set org.gnome.desktop.session idle-delay 0 

# Hide desktop trashcan
gsettings set org.gnome.nautilus.desktop trash-icon-visible false

# For resetting back to default
# gsettings reset org.gnome.desktop.interface scaling-factor

# Copy settings from github
cp .vimrc ~/.vimrc
cp .tmux.conf ~/.tmux.conf

echo "" >> ~/.bashrc
cat .bashrc >> ~/.bashrc

# pwntools
yes Y | sudo apt-get install python3 python3-pip python3-dev git libssl-dev libffi-dev build-essential
python3 -m pip install --upgrade pip
python3 -m pip install --upgrade pwntools

# gef
wget -O ~/.gdbinit-gef.py -q https://github.com/hugsy/gef/raw/master/gef.py
echo source ~/.gdbinit-gef.py >> ~/.gdbinit

pip3 install --upgrade keystone-engine
pip3 install --upgrade unicorn
pip3 install --upgrade capstone
pip3 install --upgrade ropper

# tmux
# Don't forget to do prefix + I to install all plugins!
git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm

