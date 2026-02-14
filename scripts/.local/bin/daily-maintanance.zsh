#!/usr/bin/env zsh
clear

# update packages
echo "updating packages..."
sudo pacman -Syyu --noconfirm

# update nvim
echo "update neovim... (manually)"
cd ~/dotfiles
nvim .

echo "commiting changes..."
git add nvim/.config/nvim/lazy-lock.json
git commit -m "chore(lazy.nvim): update plugins"
git push

# update oh my zsh
echo "updating oh-my-zsh"
$ZSH/tools/upgrade.sh

echo "done"
