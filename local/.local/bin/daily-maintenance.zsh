#!/usr/bin/env zsh
set -e # stop the script when an error happens to be able to fix the bug on time

clear

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
$ZSH/tools/upgrade.sh 

# update flatpak
flatpak update -y

echo "done"
