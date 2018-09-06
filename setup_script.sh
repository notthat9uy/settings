#!/bin/sh

# Check for updates
sudo apt-get update

# Basic utilities 
yes Y | sudo apt-get install vim git cmake tmux

# Change for high DPI
gsettings set org.gnome.desktop.interface scaling-factor 2

# Turn off display sleep
gsettings set org.gnome.desktop.session idle-delay 0 

# For resetting back to default
# gsettings reset org.gnome.desktop.interface scaling-factor

# Pull settings from github
git clone https://github.com/notthat9uy/settings.git

# Copy settings from github
cp settings/.vimrc ~/.vimrc
cp settings/.tmux.conf ~/.tmux.conf

echo "" >> ~/.bashrc
cat settings/.bashrc >> ~/.bashrc

# pwntools
yes Y | sudo apt-get install python2.7 python-pip python-dev git libssl-dev libffi-dev build-essential
sudo pip2 install --upgrade pip
sudo pip2 install --upgrade pwntools

# gef
wget -O ~/.gdbinit-gef.py -q https://github.com/hugsy/gef/raw/master/gef.py
echo source ~/.gdbinit-gef.py >> ~/.gdbinit

yes Y | sudo apt-get install python3-pip 

sudo pip3 install --upgrade pip
sudo pip3 install --upgrade keystone-engine
sudo pip3 install --upgrade unicorn
sudo pip3 install --upgrade capstone
sudo pip3 install --upgrade ropper
