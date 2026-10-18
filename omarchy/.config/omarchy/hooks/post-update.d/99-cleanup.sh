#!/usr/bin/env bash

# 1. Update personal configurations
cd /home/muhammed-uzair/dotfiles
git pull
nvim --headless "+Lazy! restore" +qa

# 2. Update shell and flatpaks
$ZSH/tools/upgrade.sh 
flatpak update -y

# 3. Clean and optimize system
sudo paccache -rk1
[ -n "$(pacman -Qdtq)" ] && sudo pacman -Rns $(pacman -Qdtq) --noconfirm
fc-cache -f
sudo fstrim -av

# 4. Notify completion
notify-send "System Maintained" "Pacman cache cleaned, orphans removed, and SSD trimmed." --icon=system-software-update
