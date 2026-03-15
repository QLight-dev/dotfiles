#!/usr/bin/env zsh
clear

echo "requesting sudo access..."
sudo echo "received sudo access!"

# update packages
echo "updating packages..."
sudo pacman -Syyu --noconfirm

echo "update neovim..."
cd ~/dotfiles
nvim --headless "+Lazy! sync" +qa

echo "commiting changes..."
git add nvim/.config/nvim/lazy-lock.json
git commit -m "chore(lazy.nvim): update plugins"
git push

# update oh my zsh
echo "updating oh-my-zsh"
$ZSH/tools/upgrade.sh > /dev/null

echo "done"
