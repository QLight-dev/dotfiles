#!/usr/bin/env bash
set -e

cd /home/muhammed-uzair/dotfiles
nvim --headless "+Lazy! sync" +qa
git push

if [[ -n $(git status -s) ]]; then
    git add .
    git commit -m "Auto-update dotfiles: $(date +'%Y-%m-%d %H:%M:%S')"
fi


omz update
flatpak update -y

sudo paccache -rk1

if orphans=$(pacman -Qdtq); then
    sudo pacman -Rns $orphans --noconfirm
fi

fc-cache -f
sudo fstrim -av

read -p "Do you want to restart now? [y/N]: " -n 1 -r
echo
if [[ $REPLY =~ ^[Yy]$ ]]; then
    echo "Rebooting..."
    sudo reboot
else
    echo "Reboot skipped."
fi
