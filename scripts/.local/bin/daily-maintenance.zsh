#!/usr/bin/env zsh
clear

echo "requesting sudo access..."
sudo echo "received sudo access!"

# update packages
echo "updating packages..."
sudo pacman -Syyu --noconfirm

echo "update neovim..."
cd ~/dotfiles
# ci pipline already updates lockfile, only need to sync with lockfile
git pull
nvim --headless "+Lazy! restore" +qa

# update oh my zsh
echo "updating oh-my-zsh"
$ZSH/tools/upgrade.sh > /dev/null

echo "done"
